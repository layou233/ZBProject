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

ServiceName matches inbound service name of the connection.

The parameter is a listable of strings.

This is case sensitive.

You can refer to a list from the Lists object of the Root by `lists:` prefix and List Tag.
