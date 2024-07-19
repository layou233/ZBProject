# Multi outbound

One service, multiple outbounds.

Assume we have domains "a.example.com" and "b.example.com", both pointing to this server.

When players connect from different domains, we want to proxy them to different destinations.

```json title="ZBProxy.json"
{
  "Log": {
    "Level": "info"
  },
  "Services": [
    {
      "Name": "in",
      "Listen": 25565
    }
  ],
  "Router": {
    "DefaultOutbound": "RESET",
    "Rules": [
      {
        "Type": "always",
        "Sniff": "minecraft"
      },
      {
        "Type": "MinecraftHostname",
        "Parameter": {
            "Domain": "a.example.com"//(1)!
        },
        "Outbound": "a-out"
      },
      {
        "Type": "MinecraftHostname",
        "Parameter": {
            "Domain": "b.example.com"
        },
        "Outbound": "b-out"
      }
    ]
  },
  "Outbounds": [
    {
      "Name": "a-out",
      "TargetAddress": "mc.hypixel.net",
      "TargetPort": 25565,
      "Minecraft": {
        "EnableHostnameRewrite": true,
        "OnlineCount": {
          "Max": 20,
          "Online": -1,
          "EnableMaxLimit": false
        },
        "MotdDescription": "a's MOTD"
      }
    },
    {
      "Name": "b-out",
      "TargetAddress": "minemen.club",
      "TargetPort": 25565,
      "Minecraft": {
        "EnableHostnameRewrite": true,
        "OnlineCount": {
          "Max": 20,
          "Online": -1,
          "EnableMaxLimit": false
        },
        "MotdDescription": "b's MOTD"
      }
    }
  ],
  "Lists": {}
}
```

1. If you are using SRV, you may need to add more domains than this to cover all situations caused by Mojang. See documentation.
