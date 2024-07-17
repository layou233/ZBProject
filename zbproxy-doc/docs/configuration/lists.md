# Lists

Lists contains multiple key-value pairs, where the key is a string and the value is a string list.

Key is used as List Tag which used to be a identify for a list.

The list itself has no functionality and the content is non repetitive.
Current version mainly uses it in conjunction with Access Control and TLSSniffing.

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
