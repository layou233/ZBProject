

# Configuration file of ZBProxy

At the first launch of ZBProxy, it is going to generate a configuration file automatically.  

Also, if configuration file not exist, the program will generated a new one.  

配置文件会在第一次启动 ZBProxy 时自动生成。如果配置文件不存在，程序也会自动生成一个新的。  

Configuration file, which is called `ZBProxy.json`, is used to set all options to unlock the power of ZBProxy.  

ZBProxy 的配置文件是`ZBProxy.json`，配置文件用于设置所有的选项以完全释放 ZBProxy 的强大力量。

The full config is looked like this: (ZBProxy 3.0-rc.3+)

```json
{
    "Services": [
        {
            "Name": "HypixelDefault",
            "TargetAddress": "mc.hypixel.net",
            "TargetPort": 25565,
            "Listen": 25565,
            "Flow": "auto",
            "IPAccess": {
                "Mode": "",
                "ListTags": []
            },
            "Minecraft": {
                "EnableHostnameRewrite": true,
                "RewrittenHostname": "",
                "NameAccess": {
                    "Mode": "",
                    "ListTags": []
                },
                "EnableAnyDest": false,
                "AnyDestSettings": {},
                "MotdFavicon": "{DEFAULT_MOTD}",
                "MotdDescription": "§d{NAME}§e service is working on §a§o{INFO}§r\n§c§lProxy for §6§n{HOST}:{PORT}§r"
            }
        }
    ],
    "Lists": {}
}
```

This file consists of a JSON that currently has Services item and Lists item.

该文件由含有 Services项 和 Lists项 的JSON组成。

| JSON Item | Type                                               | Meaning                                                      |
| --------- | -------------------------------------------------- | ------------------------------------------------------------ |
| Services  | []ConfigProxyService (List of ProxyService Object) | You can setup multiple services there. All services that correctly configured in this list will all be launched when the program start.<br />你可以在此设置多组服务，每组被正确配置的服务都将在主程序启动时运行。 |
| Lists     | []Lists (list of key-value string lists)           | Definition for lists that currently used for Access Control.<br/>定义用于 访问控制 的列表。 |

------

## ProxyService Object

Only the first five options are required.  

仅前五个选项是必须的。

When only the first five options are included in a `Service` configuration, ZBProxy will start a ordinary and efficient reverse proxy.  

当一个服务配置里只包含前五个选项时，ZBProxy 将启动一个普通且高效的反向代理。

> `Name` *(Requied)* : string

The name of the service which is used to be shown in the log or MOTD *{NAME}* tag.  
该服务的名字，用于在日志中显示或作为MOTD中的*{NAME}*占位符。  

> `TargetAddress` *(Requied)* : string

The address you want proxy. (without port)  
你想要代理的地址，不包括端口号。  

> `TargetPort` *(Required)* : uint8 (unsigned short)

The port of the address you want to proxy. (from 0 to 65535)  
你想要代理的端口，范围在0到65535。  

> `Listen` *(Required)* : uint8 (unsigned short)

The port you want to listen on 0.0.0.0. (from 0 to 65535)  
你想要监听的本地端口，默认在0.0.0.0上监听，范围在0到65535。  

> `Flow` *(Required)* : "auto" | "linux-zerocopy" | "multiple" | "origin"

For more information, go to [Flow](flow.html) page.  
选择的流控模式，可选项如上，保持默认即可。  
更多有关流控模式的信息，前往 [流控](flow.html) 页。  

> `IPAccess` : AccessControl Object

Access control module for restricting client IP access.  
For more information, go to [AccessControl](access.html) page.  
用于控制客户端IP访问的 访问控制 模块。  
详见 [访问控制](access.html) 页。

> `Minecraft` : Minecraft Object

*See below.*


## Minecraft Object

> `EnableHostnameRewrite` : boolean

Hostname is used to bypass Hypixel unofficial hostname detection etc.  If you are proxying Hypixel, turn on this.  
主机名重写用于绕过 Hypixel 非官方主机名检测之类，如果你正在转发 Hypixel，则需要开启这个。  

> `RewrittenHostname` : string

If you enable hostname rewriting, then this setting is used to determine the rewritten hostname.  
Leave blank to automatically set to `TargetAddress`.  
如果你启用了主机名重写，那么此设置用于决定重写的主机名。  
留空则自动设置为`TargetAddress`。  

> `NameAccess` : AccessControl Object

Access control module for restricting player name access.  
For more information, go to [AccessControl](access.html) page.  
用于控制 玩家名 加入游戏的 访问控制 模块。  
详见 [访问控制](access.html) 页。

> `EnableAnyDest` : boolean
> `AnyDestSettings` : AnyDestSettings Object

*Not Implemented Yet*  

> `MotdFavicon` : string (base64 png, 64\*64)
> `MotdDescription` : string

The MOTD for Minecraft server list.  
For more information, go to MOTD page.  
修改 Minecraft 服务器列表的 MOTD。  
更多有关MOTD的信息，前往 MOTD 页。
