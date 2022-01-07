

# Configuration file of ZBProxy

At the first launch of ZBProxy, it is going to generate a configuration file automatically.  

Also, if configuration file not exist, the program will generated a new one.  

配置文件会在第一次启动 ZBProxy 时自动生成。如果配置文件不存在，程序也会自动生成一个新的。  

Configuration file, which is called `ZBProxy.json`, is used to set all options to unlock the power of ZBProxy.  

ZBProxy 的配置文件是`ZBProxy.json`，配置文件用于设置所有的选项以完全释放 ZBProxy 的强大力量。

The default config is looked like this:

```json
{
    "Services": [
        {
            "Name": "HypixelDefault",
            "TargetAddress": "mc.hypixel.net",
            "TargetPort": 25565,
            "Listen": 25565,
            "Flow": "auto",
            "EnableHostnameRewrite": true,
            "RewrittenHostname": "",
            "EnableAnyDest": false,
            "AnyDestSettings": {
                "WildcardRootDomainName": ""
            },
            "MotdFavicon": "{DEFAULT_MOTD}",
            "MotdDescription": "§d{NAME}§e service is working on §a§o{INFO}§r\n§c§lProxy for §6§n{HOST}:{PORT}§r",
            "EnableWhiteList": false,
            "EnableMojangCapeRequirement": false
        }
    ]
}
```

This file consists of a JSON that currently only has Services item.

该文件由一个目前仅有Services项的JSON组成。

| JSON Item | Type                                               | Meaning                                                      |
| --------- | -------------------------------------------------- | ------------------------------------------------------------ |
| Services  | []ConfigProxyService (List of ProxyService Object) | You can setup multiple services there. All services that correctly configured in this list will all be launched when the program start.<br />你可以在此设置多组服务，每组被正确配置的服务都将在主程序启动时运行。 |

------

## ProxyService Object

Only the first five options are required.  

仅前五个选项是必须的。

When only the first five options are included in a `Service` configuration, ZBProxy will start a ordinary and efficient reverse proxy.  

当一个服务配置里只包含前五个选项时，ZBProxy 将启动一个普通且高效的反向代理。

| JSON Item                   | Type                       | Meaning                                                      |
| --------------------------- | -------------------------- | ------------------------------------------------------------ |
| Name *(Required)*           | string                     | The name of the service which is used to be shown in the log or MOTD *{NAME}* tag.<br />该服务的名字，用于在日志中显示或作为MOTD中的*{NAME}*占位符。 |
| TargetAddress *(Required)*  | string                     | The address you want proxy. (without port)<br />你想要代理的地址，不包括端口号。 |
| TargetPort *(Required)*     | uint8 (unsigned short)     | The port of the address you want to proxy. (from 0 to 65535)<br />你想要代理的端口，范围在0到65535。 |
| Listen *(Required)*         | uint8 (unsigned short)     | The port you want to listen on 0.0.0.0. (from 0 to 65535)<br />你想要监听的本地端口，默认在0.0.0.0上监听，范围在0到65535。 |
| Flow *(Required)*           | string **(flow type)**     | The flow control method you want to choose: `auto`, `linux-zerocopy`, `origin`.<br />For more information, go to Flow page.<br />选择的流控模式，可选项如上，保持默认即可。<br />更多有关流控模式的信息，前往 流控 页。 |
| EnableHostnameRewrite       | boolean                    | Hostname is used to bypass Hypixel unofficial hostname detection etc.  If you are proxying Hypixel, turn on this.<br />主机名重写用于绕过 Hypixel 非官方主机名检测之类，如果你正在转发 Hypixel，则需要开启这个。 |
| RewrittenHostname           | string                     | If you enable hostname rewriting, then this setting is used to determine the rewritten hostname.<br />Leave blank to automatically set to `TargetAddress`.<br />如果你启用了主机名重写，那么此设置用于决定重写的主机名。<br />留空则自动设置为`TargetAddress`。 |
| EnableAnyDest               | boolean                    | *Not Implemented Yet*                                        |
| AnyDestSettings             | AnyDestSettings Object     | *Not Implemented Yet*                                        |
| MotdFavicon                 | string (base64 png, 64*64) | The MOTD for Minecraft server list.<br />For more information, go to MOTD page.<br />修改 Minecraft 服务器列表的 MOTD。<br />更多有关MOTD的信息，前往 MOTD 页。 |
| MotdDescription             | string                     | *Same as above.*                                             |
| EnableWhiteList             | boolean                    | *Not Implemented Yet*                                        |
| EnableMojangCapeRequirement | boolean                    | *Not Implemented Yet*                                        |