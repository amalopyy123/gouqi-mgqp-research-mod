# RGSS 窗口延迟销毁说明

## 问题现象

在窗口的确认或取消回调中直接执行 `window.dispose`，有时会发生：

```text
Exception : RGSSError
disposed window
```

调用栈通常会经过 `Scene_Base#update_all_windows` 和 `Window_Base#update`。
这个问题不只属于“获取敌人物品”，任何在输入回调中直接销毁窗口的菜单都有可能遇到。

## 原因

场景每帧会先取得当前所有窗口，再依次调用它们的 `update`：

```ruby
def update_all_windows
  all_windows.each(&:update)
end
```

`all_windows` 返回的是本帧的窗口快照。如果正在更新窗口 A 时，其确认回调直接销毁了同一快照中的窗口 B，循环稍后仍会调用窗口 B 的 `update`。此时窗口 B 已经被销毁，于是 RGSS 抛出 `disposed window`。

因此，即使已经把实例变量设为 `nil`，也不能改变当前帧已经生成的窗口快照。

## 解决方法

输入回调中不要立即销毁窗口，而是先隐藏、停用，并加入延迟销毁队列：

```ruby
def defer_research_mod_window_dispose(window)
  return unless window && !window.disposed?

  window.hide
  window.deactivate if window.respond_to?(:deactivate)
  @research_mod_deferred_windows ||= []
  @research_mod_deferred_windows << window unless @research_mod_deferred_windows.include?(window)
end
```

在下一帧建立窗口快照之前统一销毁：

```ruby
def update
  dispose_research_mod_deferred_windows
  super
end

def dispose_research_mod_deferred_windows
  windows = @research_mod_deferred_windows
  return unless windows && !windows.empty?

  @research_mod_deferred_windows = []
  windows.each do |window|
    window.dispose unless window.disposed?
  end
end
```

菜单关闭代码应写成：

```ruby
def close_example_window
  defer_research_mod_window_dispose(@example_window)
  @example_window = nil
  @parent_window.activate
end
```

## 排查要点

- 在菜单的 `process_ok`、`process_cancel` 或 handler 调用链中搜索直接的 `.dispose`。
- 多个窗口一起关闭时，全部加入延迟销毁队列。
- `hide` 和 `deactivate` 要立即执行，避免旧窗口继续显示或接收输入。
- 实例变量仍应设为 `nil`，避免后续逻辑继续引用即将销毁的窗口。
- `close` 只是播放关闭动画，不等于 `dispose`；计划复用窗口时可以只关闭和停用。
- 场景结束时仍要清空延迟队列，防止遗漏资源释放。

当前研究修改器的通用实现位于 `Patch/zzzz_gouqi_Research_Mod.rb` 的 `Scene_ResearchMod` 中。新增菜单窗口时应复用该机制。
