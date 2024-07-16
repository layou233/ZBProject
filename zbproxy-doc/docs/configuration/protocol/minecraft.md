# Minecraft

## Minecraft Object

```json
{
    "EnableHostnameRewrite": true,
    "RewrittenHostname": "hypixel.net",
    "OnlineCount": {
        "Max": 100,
        "Online": -1,
        "EnableMaxLimit": false,
        "Sample": [] //(1)!
    },
    "IgnoreFMLSuffix": false,
    "HostnameAccess": {},
    "NameAccess": {},
    "PingMode": "",
    "MotdFavicon": "{DEFAULT_MOTD}",
    "MotdDescription": ""
}
```

1. Can also be an object, according to the sample format you use.

## Fields

### EnableHostnameRewrite

Hostname rewritten is used to bypass Hypixel unofficial hostname detection etc.

If you are proxying Hypixel, turn on this.

### RewriteHostname

If you enable hostname rewriting, then this setting is used to determine the rewritten hostname.

Automatically set to the target address of the connection if empty.

### OnlineCount

Settings of online player count displayed in the MOTD and total player numbers limit.

*See below.*

### IgnoreFMLSuffix

See [https://github.com/layou233/ZBProxy/issues/12](https://github.com/layou233/ZBProxy/issues/12).

This will ignore the FML signature that mentioned in this issue, which may cause players unable to join the game if remote server is a FML server.  
But for some servers, this could help players to bypass the client mods check.

It has been observed in practice that this may cause the FML client to print a lot of warning logs (but does not affect the game), so change it at your own risk.

### HostnameAccess

Access control module for restricting player hostname access.

This will reject clients claiming to connect to some unrecognized addresses, typically pirate redirects.

The hostname must exactly match what you had typed in your game.
If you need suffix match, use router rules instead.

Hostname sent by Minecraft clients may be different when connecting to a SRV service. Expand note below to find out.

??? note
    Assume we have a Minecraft server at mc.example.com:25565, and we have a SRV record (_minecraft._tcp.example.com) pointing to it.

    So players can join this server through `example.com` without a problem. However, the client sends different hostname when requesting MOTD and when joining game.
    The client would send:

    - `example.com` when requesting MOTD, the same as you typed in your game.
    - `mc.example.com.` when joining game. Note there is an comma at the end.

    You should keep this in mind when writing rules and lists.

    Too weird.


For more information, go to [access control](shared/access.md) page.

### NameAccess

Access control module for restricting player name access.

For more information, go to [access control](shared/access.md) page.

### PingMode

Display mode for Server List Ping.

- `disconnect`: Display `(no connection)` on server list.

- `0ms`: Always display 0 ms latency on server list.

If empty (or as default): It will display the latency between client and ZBProxy when any Minecraft-related feature is enabled, and display latency between client and target when no Minecraft-related feature is enabled.

!!! NOTE
    "no Minecraft-related feature is enabled" means that you leave both `MotdFavicon` and `MotdDescription` empty, and ZBProxy will proxy any MOTD requests to the target server directly without any modification.

Refer to our development blog: [十分钟：我们如何把加速 IP 做到 0 ms？](https://www.bilibili.com/read/cv21180654)

### MotdFavicon

Base64 encoded 64*64 PNG string.

The size of images must be 64*64, as specified by Minecraft. Because of the PNG format, images can include transparency.

A proper Base64 PNG string should start with `data:image/png;base64,`.

You can use [this web application we provide](https://launium.com/app/file-base64.html) to convert PNG image files to Base64 strings.

`{DEFAULT_MOTD}` is a magic value and will be replaced with a favicon of ZBProxy.

### MotdDescription

The MOTD for Minecraft server list.

For more information, go to MOTD page.

## OnlineCount Object

## Fields

### Max

Max player number displayed in the server list.

### Online

Online player number displayed in the server list.

If set to a negative number (such as -1), the actual number of online players will be displayed.

### EnableMaxLimit

Enable max player number limit and use the number in `Max` as the maximum number of players.

New players will be kicked when reaching the max limit.

### Sample

Samples of online players, shown when hovering over the player count in the server list.

If empty, no tooltip will appear.

This is usually used to create a custom tooltip for players. To achieve this feature, we provide 2 formats of Sample field:

```json title="Full format"
[
    {
        "Name": "tooltip_line_1",
        "ID": "9f9e8a99-1fbd-4d72-b6e8-3beae4b1c9b8"
    },
    {
        "Name": "tooltip_line_2",
        "ID": "698e34ce-8c63-4dbb-af2e-64c5c2970aae"
    }
    // and more
]
```

And a simplified format, just a simple array of tooltip strings:

```json title="Simplified format"
[
    "tooltip_line_1",
    "tooltip_line_2"
    // and more
]
```

`ID` is the UUID of the player sample. It is not neccessary for tooltip purpose but you have to generate one for every sample.

If you choose the simplified format, we will automatically generate unique UUIDs for every sample, which could save you a lot of time.

The simplified format is recommended for most usages, unless you have the demand for customizing UUID.
