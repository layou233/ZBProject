

# ZBProxy的配置文件

配置文件会在第一次启动 ZBProxy 时在运行目录自动生成。如果配置文件不存在，程序也会自动生成一个新的。  

ZBProxy 的配置文件是`ZBProxy.json`，配置文件用于设置所有的选项以完全释放 ZBProxy 的强大力量。

3.0版本的配置文件如下所示：

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

该文件由含有 Services项 和 Lists项 的JSON组成。

| JSON 项 | 作用                                               | 备注                                                      |
| --------- | -------------------------------------------------- | ------------------------------------------------------------ |
| Services  | 配置代理 (代理项目的列表) | 你可以在此设置多组服务，每组被正确配置的服务都将在主程序启动时运行。 |
| Lists     | 列表 (字符串列表)           | 定义用于 访问控制 的列表。 |

------

## ProxyService配置
| 参数 | 类型 | 说明 | 默认值 | 可选值 | 备注 |
| :--- | :--- | :--- | :--- | :--- | :---|
| Name | string | 服务名字 | | | 必填, 用于在日志中显示或作为MOTD中的*{NAME}*占位符。 |
| TargetAddress | string | 需要代理的地址 | mc.hypixel.net | | 必填, 你想要代理的地址，不包括端口号。 |
| TargetPort | int | 需要代理的端口 | 25565 | 1-65535 | 必填 |
| Listen | int | 本地监听端口 | 25565 | 1-65535 | 必填, 默认在0.0.0.0上监听 |
| Flow | string | 流控 | auto | auto/linux-zerocopy/multiple/origin | 更多有关流控模式的信息，前往 [流控](flow.html) 页。 |
| IPAccess | json | 控制客户端IP | | | 详见 [访问控制](access.html) 页。 |
| Minecraft | json | 功能配置 | | | 详见下文 |

## Minecraft Object

| 参数 | 类型 | 说明 | 默认值 | 可选值 | 备注 |
| :--- | :--- | :--- | :--- | :--- | :---|
| EnableHostnameRewrite | boolean | 主机名重写 | true | true/false | 用于绕过 Hypixel 非官方主机名检测之类，如果你正在转发 Hypixel，则需要开启这个。|
| RewrittenHostname | string | 重写Host | `TargetAddress` | | 如果你启用了主机名重写, 那么此设置用于决定重写的主机名. 留空则自动设置为`TargetAddress`. |
| NameAccess |  | 名称白名单 | | | 详见 [访问控制](access.html) 页. |
| MotdFavicon | string | 加速IP图标 | | | base64 png, 64\*64 |
| MotdDescription | string | 服务器MOTD | | | |

