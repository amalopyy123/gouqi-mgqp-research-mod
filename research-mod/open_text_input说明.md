# `ResearchMod.open_text_input` 使用说明

## 用途

`ResearchMod.open_text_input` 是研究修改器的通用文字输入入口。

它会打开 `Scene_ResearchModTextInput`，提供：

- 平假名
- 片假名
- 英数及常用符号
- 空格、删除、确定
- 最大字符数限制
- 输入内容保存到存档

文字输入窗口使用 `Window_ResearchModNameEdit` 显示当前输入内容，已去除角色头像并采用居中显示。

## 调用格式

```ruby
ResearchMod.open_text_input(
  key,
  title,
  default_text,
  max_chars,
  help_text
)
```

参数说明：

| 参数 | 说明 |
| --- | --- |
| `key` | 保存文字使用的符号，例如 `:actor_note`；内容保存在 `$game_system`，会随存档保存。 |
| `title` | 输入窗口标题。 |
| `default_text` | 打开窗口时预填的文字。 |
| `max_chars` | 最大字符数，当前限制为 1～24。 |
| `help_text` | 帮助窗口提示，可使用 `\n` 换行；省略时使用默认提示。 |

## 默认保存示例

不传入回调时，确定后会自动保存到自定义文字数据：

```ruby
ResearchMod.open_text_input(
  :actor_note,
  '请输入角色备注',
  ResearchMod.custom_text(:actor_note),
  16,
  "支持平假名、片假名和英数。\n确定后保存到存档。"
)
```

读取内容：

```ruby
ResearchMod.custom_text(:actor_note)
```

设置内容：

```ruby
ResearchMod.set_custom_text(:actor_note, '新的备注')
```

## 使用回调处理输入结果

最后可以传入代码块，让调用方自行处理确定后的文字：

```ruby
ResearchMod.open_text_input(
  :actor_name,
  '修改角色名字',
  actor.name,
  16,
  "请输入新的角色名字。\n名字不能为空。"
) do |value|
  next false if value.to_s.empty?

  actor.name = value.to_s
  true
end
```

回调规则：

- 返回 `false`：不关闭输入窗口，继续输入。
- 返回其他值或不返回 `false`：关闭窗口并返回上一场景。
- 使用回调时不会自动写入 `custom_texts`，需要在回调中自行保存或修改目标对象。

## 重要注意事项

回调执行时，打开输入窗口前的场景可能已经被引擎释放。因此：

- 回调中可以修改角色、变量或其他游戏数据。
- 不要在回调中刷新、访问或销毁打开输入窗口之前的窗口对象。
- 返回上一场景后，让该场景重新创建或刷新窗口。

当前“自定义文字输入”和“修改当前角色名字”都使用这个通用入口。

