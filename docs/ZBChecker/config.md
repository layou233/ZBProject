

# Configuration file of ZBChecker

At the first launch of ZBChecker, it is going to generate a configuration file automatically.  

Configuration file, which is called `ZBChecker.json` when you are using ZBChecker Full/Pro and `ZBLite.json` when you are using ZBLite, is used to set all options for better checking quality.  

The default config is looked like this:

```javascript
{
    "Threads": 500,
    "RetryTimes": 5,
    "AntiDuplication": true,
    "PreferredHttpRequestScheme": "https",
    "Proxy": {
        "Enabled": true,
        "API": {
            "Enabled": true,
            "URL": "https://api.proxyscrape.com/v2/?request=getproxies\u0026protocol=socks4\u0026timeout=10000\u0026country=all\u0026simplified=true",
            "RefreshDelay": 300
        },
        "Filename": "socks4_proxies.txt",
        "ProxyType": "socks4",
        "Timeout": 100
    },
    "Minecraft": {
        "HypixelKey": "[YOUR API KEY HERE]",
        "EnabledBanChecker": true
    }
}
```

| JSON Item                  | Type              | Meaning                                                      |
| -------------------------- | ----------------- | ------------------------------------------------------------ |
| Threads                    | uint              | The max threads in the checking progress.                    |
| RetryTimes                 | uint              | The recheck times for every combo to check if availible.     |
| AntiDuplication            | boolean           | Auto remove duplicated combos before checking start. (Recommended) |
| PreferredHttpRequestScheme | "http" or "https" | Switch the perferred request scheme if both HTTP and HTTPS scheme are availible for the same checking effect. <br />HTTP for lower CPU, RAM, and network cost.<br />HTTPS for better security of all your combos when using public proxies. |
| Proxy                      | Proxy Object      | *See below*                                                  |
| Minecraft                  | Minecraft Object  | *See below*                                                  |

