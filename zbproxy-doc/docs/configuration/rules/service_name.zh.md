# ServiceName

```json title="Multi"
{
    "Type": "ServiceName",
    "Parameter": [
        "hypixel-in",
        "mmc-in",
        "list:inbound_names"
    ]
}
```

```json title="Single"
{
    "Type": "ServiceName",
    "Parameter": "hypixel-in"
}
```

ServiceName 匹配连接对应的入站服务名。

参数是一个 Listable 的字符串。

这是大小写敏感的。

你可以通过 "lists:" 前缀和 List Tag 来引用 Lists 中的列表。
