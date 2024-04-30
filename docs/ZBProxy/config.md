

# Configuration file of ZBProxy

At the first launch of ZBProxy, it is going to generate a configuration file automatically.  

Also, if configuration file not exist, the program will generated a new one.  

配置文件会在第一次启动 ZBProxy 时自动生成。如果配置文件不存在，程序也会自动生成一个新的。  

Configuration file, which is called `ZBProxy.json`, is used to set all options to unlock the power of ZBProxy.  

ZBProxy 的配置文件是`ZBProxy.json`，配置文件用于设置所有的选项以完全释放 ZBProxy 的强大力量。

The full config is looked like this: (ZBProxy 3.0-rc.4+)

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
                "OnlineCount": {
                    "Max": 114514,
                    "Online": -1,
                    "EnableMaxLimit": false
                },
                "IgnoreFMLSuffix": false,
                "HostnameAccess": {
                    "Mode": "",
                    "ListTags": []
                },
                "NameAccess": {
                    "Mode": "",
                    "ListTags": []
                },
                "EnableAnyDest": false,
                "AnyDestSettings": {},
                "PingMode": "",
                "MotdFavicon": "{DEFAULT_MOTD}",
                "MotdDescription": "§d{NAME}§e service is working on §a§o{INFO}§r\n§c§lProxy for §6§n{HOST}:{PORT}§r"
            },
            "TLSSniffing": {
                "RejectNonTLS": false,
                "RejectIfNonMatch": false,
                "SNIAllowListTags": []
            },
            "SocketOptions": {
                "Mark": 0,
                "Interface": "",
                "TCPFastOpen": false,
                "TCPCongestion": "",
                "MultiPathTCP": false
            },
            "Outbound": {
                "Type": "",
                "Network": "tcp",
                "Address": ""
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

> [!TIP]
> A ZBProxy instance can run multiple services in parallel, depending on the number of Service objects you configure.
> 一个 ZBProxy 实例可以并行运行多个服务，取决于你配置的 Service 对象数量。

## ProxyService Object

Only the first five options are required.  

仅前五个选项是必须的。

When only the first five options are included in a `Service` configuration, ZBProxy will start a ordinary and efficient reverse proxy.  

当一个服务配置里只包含前五个选项时，ZBProxy 将启动一个普通且高效的反向代理。

> `Name` *(Requied)* : string

The name of the service which is used to be shown in the log or MOTD *{NAME}* tag.  
该服务的名字，用于在日志中显示或作为MOTD中的*{NAME}*占位符。  

> `TargetAddress` *(Requied)* : string

The address you want to proxy. (without port)  
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

Go to [Minecraft](minecraft.html) page.  
详见 [Minecraft](minecraft.html) 页。

> `TLSSniffing` : TLSSniffing Object

Go to [TLS](tls.html) page.  
详见 [TLS](tls.html) 页。

> `SocketOptions` : SocketOptions Object

*See below.*

> `Outbound` : Outbound Object

*See below.*


## SocketOptions Object

> `Mark` : int

Set routing mark for outbound connections if not zero.  
Supported on Linux (SO_MARK) and FreeBSD (SO_USER_COOKIE).  
不为 0 时为出站连接设置路由标记。  
支持 Linux (SO_MARK) 和 FreeBSD (SO_USER_COOKIE)。

> `Interface` : string

Bind outbound connections to the specified NIC if not empty.  
Supported on Linux.  
不为空时将出站连接绑定到指定网卡。  
支持 Linux。

> `TCPFastOpen` : boolean

Enable TCP fast open support for outbound connections.  
为出站连接启用 TCP 快速打开 支持。

> `TCPCongestion` : string

Specify TCP congestion control algorithm for outbound connections.  
Supported on Linux. Needs kernel (module) support for specific algorithms.  
指定出站连接的 TCP 拥塞控制算法。  
支持 Linux。需要内核（模块）支持特定算法。

> `MultiPathTCP` : boolean

Enable Multipath TCP support for outbound connections.  
为出站连接启用 多路径 TCP 支持。


## Outbound Object

> `Type` : string (Outbound type)

Outbound type for remote connections. Available options are:  
用于远程连接的出站类型。可用的选项有：

- empty string (""), default. Connect directly to the target.
- "socks"/"socks5". SOCKS protocol version 5, [RFC1928](https://www.rfc-editor.org/rfc/rfc1928.txt).
- "socks4a". SOCKS protocol version 4A, [specification archived by OpenSSH](https://www.openssh.com/txt/socks4a.protocol).
- "socks4". SOCKS protocol version 4, [specification archived by OpenSSH](https://www.openssh.com/txt/socks4.protocol).

> `Network` *(Requied)* : string (network type)

Network type for remote connections. Available options are:  
用于远程连接的网络类型。可用的选项有：

- "tcp". Dual stack IPv4/IPv6 dial with [RFC6555 Happy Eyeballs](https://www.rfc-editor.org/rfc/rfc6555.txt) support (by Go standard library).
- "tcp4". IPv4 only.
- "tcp6". IPv6 only.

> `Address` : string

The address of your outbound server (if `Type` is not empty), in host:port format.  
For example, "localhost:1080".  
出站服务器的地址（如果 `Type` 不为空），主机名:端口 格式。  
例如，"localhost:1080".

> [!NOTE]  
> IPv6 addresses here should be wrapped with square brackets. For example, "[::1]:1080".
> 此处的 IPv6 地址应使用方括号包裹。例如 "[::1]:1080".
