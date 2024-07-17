# SourceIP

```json title="Multi"
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

```json title="Single"
{
    "Type": "SourceIP",
    "Parameter": "192.168.0.1"
}
```

SourceIP matches IP address or prefix of the client.

The parameter is a listable of strings.
The content must be IP addresses or IP CIDR prefixes.

You can refer to a list from the Lists object of the Root by `lists:` prefix and List Tag.
