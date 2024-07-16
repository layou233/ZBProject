

# Configuration file of ZBChecker

At the first launch of ZBChecker, it is going to generate a configuration file automatically.  

Also, if configuration file not exist, the program will generated a new one.  

配置文件会在第一次启动 ZBChecker 时自动生成。如果配置文件不存在，程序也会自动生成一个新的。  

Configuration file, which is called `ZBChecker.json` when you are using ZBChecker Full/Pro and `ZBLite.json` when you are using ZBLite, is used to set all options for better checking quality.  

ZBChecker Full/Pro 的配置文件是`ZBChecker.json`，ZBLite 的配置文件是`ZBLite.json`，配置文件用于设置所有的选项以提供一个更好的测卡质量。

The default config is looked like this:

```json
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
| Threads                    | uint              | The max threads in the checking progress.<br />测卡的最大线程数 |
| RetryTimes                 | uint              | The recheck times for every combo to check if availible.<br />如果可用，此设置为每个Combo重测的次数 |
| AntiDuplication            | boolean           | Auto remove duplicated combos before checking start. (Recommended)<br />在每次测卡前自动删除重复的Combo（推荐） |
| PreferredHttpRequestScheme | "http" or "https" | Switch the perferred request scheme if both HTTP and HTTPS scheme are availible for the same checking effect. <br />当某个API为HTTP和HTTPS都可用且效果相同的情况下，默认选择使用的协议<br />HTTP for lower CPU, RAM, and network cost.<br />使用HTTP获得更少的CPU、内存以及网络开销<br />HTTPS for better security of all your combos when using public proxies.<br />使用HTTPS在使用公共代理时最大程度保护测卡泄露 |
| Proxy                      | Proxy Object      | *See below*                                                  |
| Minecraft                  | Minecraft Object  | *See below*                                                  |

------

## Proxy Object

| JSON Item | Type       | Meaning                                                      |
| --------- | ---------- | ------------------------------------------------------------ |
| Enabled   | boolean    | Use proxies to check combos. (Recommend)<br />使用代理测卡（推荐） |
| API       | API Object | *See below*                                                  |
| Filename  | string     | If proxy API is disabled, this used to set your proxy file path. Left blank to select file each time before checking start.<br />如果代理API被禁用，此设置用于设定默认代理文件路径。如留空，则在每次测卡之前询问代理文件路径 |
| ProxyType | Proxy Type | The type of your proxies. We support `HTTP` (include HTTPS), `SOCKS 4`, `SOCKS 4A`, `SOCKS 5`, `Shadowsocks` (set as `ss`) for proxies.<br />使用代理的类型。我们支持如上代理类型 |
| Timeout   | uint       | Timeout time set for request connection. Count as `seconds`.<br />请求超时时间，以 `秒` 作为单位 |

### API Object

| JSON Item    | Type    | Meaning                                                      |
| ------------ | ------- | ------------------------------------------------------------ |
| Enabled      | boolean | Use online proxy API to get proxies.<br />使用在线代理API来获取代理 |
| URL          | string  | The URL of your online proxy API.<br />在线代理API的URL网址  |
| RefreshDelay | uint    | The interval per refresh from proxy API. Count as `seconds`. Set to a super large number to disable refresh.<br />每次从代理API刷新的间隔，以 `秒` 作为单位。设置为一个超级大的数以禁用刷新 |

P.S. : The `ProxyType` of the `Proxy` object also decides the proxy type of proxy API. So whether you are using API or not, you must set `ProxyType` correctly.  

备注：`Proxy`对象中的`ProxyType`同时也决定了代理API的代理类型。所以无论你是否使用API，都需要保证`ProxyType`设置正确。

------

## Minecraft Object

Under writting...

