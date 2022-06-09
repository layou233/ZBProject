

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

Lists Object contains multiple key-value pairs, where the key is a string and the value is a string list.  

Lists Object 包含多个键值对，其中键是一个字符串，值是一个字符串列表。  

Key is used as List Tag which used to be a identify for a list.  

键 被用作 List Tag，用于识别一个列表。  

The list itself is meaningless and the content is non repetitive. The current version is mainly used it in conjunction with Access Control.  

列表本身是无意义且内容非重复的。当前版本通常将其与 版本控制 一同使用。



# AccessControl Object

```json
{
    "Mode": "",
    "ListTags": []
}
```

