# Lists

Lists Object 包含多个键值对，其中键是一个字符串，值是一个字符串列表。

键 被用作 List Tag，用于识别一个列表。

列表本身是无意义且内容非重复的。当前版本通常将其与 版本控制 和 TLS嗅探 一同使用。

# Lists Object

```json
{
    ...
    "Lists": {
        "listA": ["foo", "bar"],
        "fruits": ["apple", "banana", "orange", "peach", "strawberry"],
        "IPs": ["1.1.1.1", "8.8.8.8", "223.5.5.5"]
    }
}
```
