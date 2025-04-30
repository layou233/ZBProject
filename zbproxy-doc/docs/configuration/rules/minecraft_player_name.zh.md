# MinecraftPlayerName

```json
{
    "Type": "MinecraftPlayerName",
    "Parameter": {
        "Lists": [
            "la_you",
            "AnyPlayer_",
            "list:allow_player"
        ],
        "LowerCase": false
    }
}
```

!!! note
    你应该先嗅探 Minecraft 协议。

MinecraftPlayerName 按原样匹配 Minecraft 玩家名。

参数是一个对象，包含一个 Listable 的字符串和 LowerCase 标记。

如果 LowerCase 为 false，则匹配是大小写敏感的。

如果 LowerCase 为 true，则所有玩家名都会先转换为小写再匹配。
它可用于不区分大小写的匹配，但您有责任确保此处引用的所有字符串已经被预先转换为小写。

你可以通过 "lists:" 前缀和 List Tag 来引用 Lists 中的列表。
