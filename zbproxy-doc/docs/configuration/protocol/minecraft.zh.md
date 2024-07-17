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

1. 也可以是对象，根据您使用的示例格式。

## 字段

### EnableHostnameRewrite

主机名重写用于绕过 Hypixel 非官方主机名检测等。

如果您正在代理 Hypixel，请打开此功能。

### RewriteHostname

如果启用主机名重写，则此设置用于确定重写的主机名。

如果为空，则自动设置为连接的目标地址。

### OnlineCount

MOTD 中显示的在线玩家数量和总玩家数量限制的设置。

*见下文。*

### IgnoreFMLSuffix

请参阅 [https://github.com/layou233/ZBProxy/issues/12](https://github.com/layou233/ZBProxy/issues/12)。

这将忽略此问题中提到的 FML 签名，如果远程服务器是 FML 服务器，这可能会导致玩家无法加入游戏。
但对于某些服务器，这可以帮助玩家绕过客户端 mods 检查。

在实践中观察到，这可能会导致 FML 客户端打印大量警告日志（但不影响游戏），因此请自行承担更改风险。

### HostnameAccess

用于限制玩家主机名访问的访问控制模块。

这将拒绝声称连接到某些陌生地址的客户端，通常是盗用重定向。

主机名必须与您在游戏中输入的内容完全匹配。

如果您需要后缀匹配，请改用路由规则。

连接到 SRV 服务时，Minecraft 客户端发送的主机名可能不同。展开下面的笔记以了解更多。

??? note
    假设我们在 mc.example.com:25565 有一个 Minecraft 服务器，并且我们有一个指向它的 SRV 记录 (_minecraft._tcp.example.com)。

    因此玩家可以毫无疑问地通过 `example.com` 加入此服务器。但是，客户端在请求 MOTD 和加入游戏时发送不同的主机名。
    客户端将在：

    - 请求 MOTD 时发送 `example.com`，与您在游戏中输入的相同。
    - 加入游戏时发送 `mc.example.com.`。注意最后有一个点号。

    你应该在编写规则、列表时注意这一点。

    离大谱。

有关更多信息，请转到 [访问控制](shared/access.md) 页面。

### NameAccess

用于限制玩家名称访问的访问控制模块。

有关更多信息，请转到 [访问控制](shared/access.md) 页面。

### PingMode

服务器列表 Ping 的显示模式。

- `disconnect`：在服务器列表中显示 `(无连接)`。

- `0ms`：在服务器列表中始终显示 0 毫秒延迟。

如果为空（或默认）：当启用任何与 Minecraft 相关的功能时，它将显示客户端和 ZBProxy 之间的延迟，当未启用与 Minecraft 相关的功能时，它将显示客户端和目标之间的延迟。

!!! 注意
    “未启用与 Minecraft 相关的功能”意味着您将 `MotdFavicon` 和 `MotdDescription` 都留空，ZBProxy 将直接将任何 MOTD 请求代理到目标服务器而不进行任何修改。

参考我们的开发博客：[十分钟：当地人把加速 IP 做到 0 ms？](https://www.bilibili.com/read/cv21180654)

### MotdFavicon

Base64 编码的 64*64 PNG 字符串。

图片大小必须为 64*64，如 Minecraft 所规定。由于 PNG 格式，图片可以包含透明度。

正确的 Base64 PNG 字符串应以 `data:image/png;base64,` 开头。

您可以使用 [我们提供的这个 Web 应用程序](https://launium.com/app/file-base64.html) 将 PNG 图片文件转换为 Base64 字符串。

`{DEFAULT_MOTD}` 是一个魔法值，将被替换为 ZBProxy 的图标。

### MotdDescription

Minecraft 服务器列表的 MOTD。

有关更多信息，请转到 MOTD 页面。

## OnlineCount Object

## 字段

### Max

服务器列表中显示的最大玩家数量。

### Online

服务器列表中显示的在线玩家数量。

如果设置为负数（例如 -1），则将显示实际的在线玩家数量。

### EnableMaxLimit

启用最大玩家数量限制，并使用 `Max` 中的数字作为最大玩家数量。

当达到最大限制时，新玩家将被踢出。

### Sample

在线玩家样本，将鼠标悬停在服务器列表中的玩家数量上时显示。

如果为空，则不会出现任何提示。

这通常用于为玩家创建自定义提示。为了实现此功能，我们提供了 2 种格式的 Sample 字段：

```json title="完整格式"
[
    {
        "Name": "tooltip_line_1",
        "ID": "9f9e8a99-1fbd-4d72-b6e8-3beae4b1c9b8"
    },
    {
        "Name": "tooltip_line_2",
        "ID": "698e34ce-8c63-4dbb-af2e-64c5c2970aae"
    }
    // 以及更多
]
```

还有一种简化格式，只是一个简单的字符串数组：

```json title="简化格式"
[
    "tooltip_line_1",
    "tooltip_line_2"
    // 以及更多
]
```

`ID` 是样本玩家的 UUID。它对于提示目的不是必需的，但您必须为每个样本生成一个。

如果您选择简化格式，我们将自动为每个样本生成唯一的 UUID，这可以为您节省大量时间。

对于大多数用途，建议使用简化格式，除非您有自定义 UUID 的需求。
