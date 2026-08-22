# 搭话模拟窗口技术笔记

本文记录 `Patch/zzzz_gouqi_Research_Mod.rb` 中“战斗对白模拟 → 搭话模拟”的窗口结构与踩坑点，供以后修改 RGSS3 窗口时参考。重点不是搭话数据的解析，而是列表、帮助、对白和选项窗口之间的布局与生命周期。

## 1. 窗口流程

当前流程大致如下：

```text
战斗对白模拟
  → 搭话模拟
  → 从敌我双方选择发起角色
  → 选择敌方目标角色
  → 选择搭话内容
  → 播放原对白
  → 如果存在选项，显示原选项
  → 播放所选选项的回应
  → 返回搭话列表
```

主要窗口：

- `Window_ResearchModBattleEditTalkActor`：从敌我双方选择发起角色。
- `Window_ResearchModBattleEditTalkEnemy`：选择敌方目标角色。
- `Window_ResearchModBattleEditTalkList`：选择具体搭话。
- `Window_Help`：显示当前项目的详细预览。
- 原版 `Window_Message`：播放对白。
- 原版 `Window_ChoiceList`：显示对白中的选项。

自定义窗口只负责“选择数据”。真正播放对白和绘制选项时，尽量交给原版消息系统，以便兼容头像、文本控制符、翻译工具和原版选项样式。

### 1.1 发起角色的数据来源

第一级列表合并当前出战的我方角色和仍然存在的敌方角色，并使用前缀区分：

```text
[我方]    1  ルカ
[敌方]  248  スライミーズ
```

我方发起者从角色的技能台词表读取技能 ID `2109`（`話し掛ける`）的开场台词。敌方发起者通过敌人的 `word_id` 和 `create_skill_words` 读取同一技能的敌方版本，并自动替换当前敌人名称和色调。

发起者没有技能 ID `2109` 的台词时仍然允许选择。播放时会跳过发起者开场，直接进入目标敌人的搭话内容。这既符合“无视是否拥有搭话技能”，也避免因为缺少台词数据导致整个角色变成不可选。

第二级仍然只列出敌方目标。发起者本身也是敌人时，可以继续选择自己作为目标，用于查看同一敌人同时作为发起者和回应者的组合效果。

## 2. 推荐布局

角色和搭话列表采用与 Cut-in 查看器相同的上下布局：

```text
┌──────────────────────────────┐
│ 上方：Window_Command 列表     │
│ 0001  角色名（搭话 3 条）     │
│ 0002  角色名（搭话 1 条）     │
│ ...                          │
├──────────────────────────────┤
│ 下方：Window_Help 详细说明     │
└──────────────────────────────┘
```

帮助窗口先创建并放在画面底部：

```ruby
help_window.y = Graphics.height - help_window.height
```

列表窗口占用剩余高度：

```ruby
def window_height
  Graphics.height - @talk_help_window.height
end
```

这种布局比“右侧备注窗口”稳定，原因是：

- 列表宽度足够，不容易截断角色名和搭话数量。
- 帮助文本有固定区域，不会覆盖列表。
- MTool 加载翻译后，文本宽度变化对布局影响较小。
- 窗口职责清楚，返回时更容易恢复。

## 3. 多行项目的关键问题

如果一个命令项目要占多行，必须同时考虑 `item_height`、窗口高度和 `refresh`。

例如：

```ruby
def item_height
  line_height * 2
end
```

此时每个项目实际占两行。若窗口仍按普通单行命令的默认高度建立，可能出现：

- 光标存在，但文字看不见。
- 上下箭头出现后，内容区域计算错误。
- 第一帧没有文字，移动光标后才刷新。
- MTool 环境下直接崩溃或无错误退出。

### 3.1 不要用项目总数制造超高窗口

不要这样计算全屏列表高度：

```ruby
fitting_height(item_count * 2)
```

项目很多时会建立远高于画面的窗口，内部 `contents` 位图也会变得很大。应让窗口高度固定为可见区域，再由 `Window_Selectable` 自己滚动：

```ruby
def window_height
  Graphics.height - @talk_help_window.height
end
```

### 3.2 尺寸改变后要重新创建内容

如果窗口初始化后才改变 `width` 或 `height`，旧的 `contents` 仍可能保持旧尺寸。正确顺序通常是：

```ruby
self.width = Graphics.width
self.height = target_height
create_contents
refresh
```

更稳妥的做法是在 `window_width`、`window_height` 中直接返回最终尺寸，让 `super` 初始化时一次建立正确窗口。

### 3.3 `refresh` 时数据必须已经准备好

`Window_Command#initialize` 会在内部建立命令列表并刷新。因此自定义数据应在调用 `super` 之前初始化：

```ruby
def initialize(help_window)
  @actors = []
  @talk_help_window = help_window
  super(0, 0)
end
```

如果列表数据在 `super` 之后才赋值，第一次 `make_command_list` 可能得到空数组，造成“窗口能选但没有文字”或首次显示空白。

## 4. 帮助窗口的生命周期

帮助窗口只应在“浏览列表”时显示。

### 4.1 浏览列表

- 显示帮助窗口。
- 激活当前列表窗口。
- 光标变化时调用 `update_help`。

```ruby
def update_help
  return unless @talk_help_window
  @talk_help_window.set_text(current_help_text)
end
```

### 4.2 播放对白前

在把文字交给 `$game_message` 前，应隐藏列表和帮助窗口：

```ruby
@research_mod_battle_edit_talk_list_window.hide
@research_mod_battle_edit_help_window.hide
```

否则帮助窗口会盖住原版对话框，尤其是帮助窗口位于画面底部时。

### 4.3 对白结束后

- 没有选项：直接恢复搭话列表和帮助窗口。
- 有选项：继续保持帮助窗口隐藏，等选项回应播放完再恢复。
- 取消或异常退出：也要恢复正确的上一级窗口。

恢复顺序建议为：

```ruby
@research_mod_battle_edit_help_window.show
@research_mod_battle_edit_talk_list_window.show
@research_mod_battle_edit_talk_list_window.activate
```

先 `show`，最后 `activate`，可以避免一个不可见窗口抢占输入。

## 5. 选项窗口的位置

目标布局是让选项窗口位于右侧，并让它的底边贴住底部对话框的顶边：

```text
                      ┌──────────────┐
                      │ 选项一        │
                      │ 选项二        │
                      └──────────────┘
┌────────────────────────────────────┐
│ 原版对话窗口                        │
└────────────────────────────────────┘
```

### 5.1 为什么不能直接读取 `@message_window.y`

原版消息窗口会根据 `$game_message.position`、打开动画和消息状态更新位置。对白结束后，它可能已经开始关闭或移动。此时读取：

```ruby
@message_window.y
```

可能得到右上角、屏幕底部或过渡中的坐标，导致选项窗口跑到错误位置。

对于固定在底部的对话窗口，应使用稳定的几何关系计算其顶部：

```ruby
dialogue_top_y = Graphics.height - @message_window.height
```

这个值不依赖消息窗口当前是否正在执行关闭动画。

### 5.2 在创建选项前保存目标底边

当前实现把临时布局信息保存在 `$game_message`：

```ruby
$game_message.instance_variable_set(:@research_mod_choice_right, true)
$game_message.instance_variable_set(
  :@research_mod_choice_bottom_y,
  Graphics.height - @message_window.height
)
```

然后在 `Window_ChoiceList#update_placement` 的扩展中调整：

```ruby
self.x = Graphics.width - width
bottom_y = $game_message.instance_variable_get(:@research_mod_choice_bottom_y)
self.y = [bottom_y.to_i - height, 0].max if bottom_y
```

含义是：

- `x = Graphics.width - width`：窗口右对齐。
- `y = 对话框顶部 - 选项窗口高度`：两者上下贴合。
- 与 `0` 取较大值：选项太多时不让窗口跑出画面顶部。

### 5.3 使用完必须清理标记

自定义选项结束后必须恢复：

```ruby
$game_message.instance_variable_set(:@research_mod_choice_right, false)
$game_message.instance_variable_set(:@research_mod_choice_bottom_y, nil)
```

否则后续普通剧情选项也会被强制移动到右侧和指定高度。

最好把清理放在所有正常返回路径都能执行的位置；若以后加入异常捕获，可在 `ensure` 中清理。

## 6. 原版选项的使用原则

搭话模拟不要自己重新绘制一个“看起来像选项”的命令窗口。应向 `$game_message` 写入原始选项，让原版 `Window_ChoiceList` 处理：

```ruby
choices.each { |choice| $game_message.choices.push(choice) }
$game_message.choice_cancel_type = choices.size
$game_message.choice_proc = proc { |index| selected_index = index }
```

优点：

- 选项文本、光标、确定音和取消音与原游戏一致。
- 更容易保留 MTool 翻译结果。
- 选项结果可继续关联原始回应分支。
- 不必重复实现等待消息和输入锁定。

需要注意：这里只应加入当前搭话节点实际拥有的选项，不能把同一角色的所有选项合并，否则会出现“对话后列出了全部选项”的问题。

## 7. 返回路径设计

每一级窗口都要明确“取消后返回哪里”：

```text
搭话列表取消 → 敌方角色列表
敌方角色列表取消 → 我方角色列表
我方角色列表取消 → 战斗修改菜单
选项取消 → 返回当前搭话列表
```

返回时需要同时处理：

- 当前窗口 `deactivate`、`hide` 或 `close`。
- 上一级窗口 `show`、`activate`。
- 帮助窗口内容刷新。
- 临时选择的 actor、enemy、talk 数据清理。
- `$game_message` 中自定义位置标记清理。

不要让两个窗口同时处于 `active = true`，否则返回键可能在两个 handler 之间循环，看起来像“怎么都退不出去”。

## 8. 窗口释放问题

战斗场景结束时，自定义窗口应与场景一起释放。若窗口会反复创建，创建前应检查旧实例，离开场景时应 `dispose`。

常见问题：

- 已 `dispose` 的帮助窗口仍被列表的 `update_help` 调用。
- 场景重入后重复创建窗口，但旧窗口仍注册在 viewport 中。
- 隐藏窗口没有停用，仍然接收方向键。
- 关闭窗口只调用 `close`，但切场景时没有 `dispose`。

调用帮助窗口前可以防御性检查：

```ruby
return unless @talk_help_window
return if @talk_help_window.disposed?
```

不过根本解决方式仍是正确管理窗口的创建、显示、停用和释放顺序。

## 9. MTool 兼容注意

MTool 加载翻译后，文本长度、编码和刷新时机可能与原版不同。窗口代码应尽量遵守以下原则：

- 列表只绘制短标题，长文本放入帮助窗口。
- 多行预览限制为固定行数，不在列表中绘制完整对白。
- 不依据翻译后字符串长度建立超大位图。
- 不频繁销毁并重建帮助窗口，只更新 `set_text`。
- 不在 `draw_item` 中解析大量数据或扫描全部技能。
- 不保留已经释放窗口的引用。
- 尽量使用 RGSS3 原版 `Window_Message` 和 `Window_ChoiceList`。
- 对数据库文本使用游戏当前编码路径，不进行多余的强制转码。

“原版正常、MTool 加载后崩溃且没有 errors.txt”通常优先检查：

1. `contents` 位图是否过大。
2. `item_height` 与窗口高度是否不匹配。
3. `draw_text_ex` 是否收到过长或异常控制符文本。
4. 隐藏或释放的窗口是否仍在刷新。
5. 列表刷新期间是否修改了命令数组。

## 10. 推荐检查清单

修改搭话模拟窗口后，至少检查以下流程：

- 第一次进入我方角色列表时文字正常显示。
- 上下滚动时帮助文本持续更新。
- 我方和敌方人数超过一页时滚动正常。
- 搭话列表第一项无需移动光标便能显示。
- 播放对白时列表和帮助窗口都消失。
- 无选项搭话播放完后直接返回列表。
- 有选项搭话只显示当前对话的选项。
- 选项窗口右对齐，并贴在底部对话框上方。
- 选项回应播放完后恢复列表和帮助窗口。
- 连续取消和重新进入不会形成返回循环。
- 战斗胜利、逃跑或场景结束后无残留窗口。
- 原版环境和 MTool 翻译环境都测试最后一页。

## 11. 维护建议

以后若继续扩展搭话模拟，建议保持以下边界：

- 数据收集负责返回结构化搭话数据。
- 三个列表窗口只负责显示和选择。
- `Scene_Battle` 负责窗口切换与流程控制。
- 原版消息系统负责对白和选项。
- 自定义 `Window_ChoiceList#update_placement` 扩展只负责特殊位置，并由临时标记控制。

这样即使以后增加搭话分类、预览行数或选项分支，也不需要重新实现整套消息窗口。
