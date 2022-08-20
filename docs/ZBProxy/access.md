

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

The list itself is meaningless and the content is non repetitive. The current version is mainly used it in conjunction with Access Control and TLSSniffing.  

列表本身是无意义且内容非重复的。当前版本通常将其与 版本控制 和 TLS嗅探 一同使用。



# AccessControl Object

```json
{
    "Mode": "",
    "ListTags": []
}
```

> `Mode` : "allow" | "block"

Working mode of Access Control module.  
`allow` is like whitelist. `block` is like blacklist.  
访问控制 模块的工作模式。  
`allow`即白名单。`block`即黑名单。  

> `ListTags` : string[]

List of List Tags, which used to select one or more Lists for Access Control matching.  
During the actual operation, the Access Control module will match the value in the Lists one by one until the same value is found in a certain List.  
Therefore, this list is ordered, and the List with a higher matching hit rate should be placed at the top of the list as much as possible to optimize performance.  
一串List Tags，用于选择一个或多个 Lists 进行 访问控制 匹配。  
实际操作过程中，访问控制 模块会逐一匹配Lists中的值，直到在某个List中找到相同的值。  
因此，此列表是有序的，应该尽可能地将匹配命中率较高的List放在更靠前的位置来优化性能。