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
    You should sniff Minecraft protocol before using this.

MinecraftPlayerName matches Minecraft player names as is.

The parameter is an object containing a listable of strings and the LowerCase mark.

This is case sensitive if LowerCase is false.

If LowerCase is true, all player names are converted to lower case before matching.
It can be used for case-insensitive matching, but it's your responsibility to ensure that all strings referenced here have been converted to lower case beforehand.

You can refer to a list from the Lists object of the Root by `lists:` prefix and List Tag.
