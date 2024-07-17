# SourceIP

```json title="多个"
{
    "Type": "SourceIP",
    "Parameter": [
        "0.0.0.0/0",
        "192.168.0.0/16",
        "1.1.1.1",
        "list:IPs"
    ]
}
```

```json title="单个"
{
    "Type": "SourceIP",
    "Parameter": "192.168.0.1"
}
```

SourceIP 匹配客户端的 IP 地址或前缀。

参数是一个 Listable 的字符串。
其内容必须是 IP 地址或 IP CIDR 前缀。

你可以通过 "lists:" 前缀和 List Tag 来引用 Lists 中的列表。
