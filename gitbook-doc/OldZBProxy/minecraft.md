
# Minecraft Object


> `EnableHostnameRewrite` : boolean

Hostname rewritten is used to bypass Hypixel unofficial hostname detection etc.  
If you are proxying Hypixel, turn on this.  
主机名重写用于绕过 Hypixel 非官方主机名检测之类。如果你正在转发 Hypixel，则需要开启这个。  

> `RewrittenHostname` : string

If you enable hostname rewriting, then this setting is used to determine the rewritten hostname.  
Automatically set to `TargetAddress` if empty.  
如果你启用了主机名重写，那么此设置用于决定重写的主机名。  
留空则自动设置为 `TargetAddress`。  

> `OnlineCount` : OnlineCount Object

Settings of online player count displayed in the MOTD and total player numbers limit.  
MOTD中显示的在线玩家数量 和 总玩家人数限制 的设置。  
*See below.*  

> `IgnoreFMLSuffix` : boolean

See [https://github.com/layou233/ZBProxy/issues/12](https://github.com/layou233/ZBProxy/issues/12).  
This will ignore the FML signature that mentioned in this issue, which may cause players unable to join the game if remote server is a FML server.  
But for some servers, this could help players to bypass the client mods check.  
It has been observed in practice that this may cause the FML client to print a lot of warning logs (but does not affect the game), so change it at your own risk.  
这将忽略此 issue 所提及的 FML 标识，可能导致玩家无法连接到服务端是FML的服务器，多数为mod服。  
但是对于一些服务器，这可能帮助玩家绕过一些客户端模组检测。  
经过实践观察，这可能导致 FML 客户端打印大量警告日志（但不影响游戏），故请据需要修改。  

> `NameAccess` : AccessControl Object

Access control module for restricting player name access.  
For more information, go to [AccessControl](access.html) page.  
用于控制 玩家名 加入游戏的 访问控制 模块。  
详见 [访问控制](access.html) 页。

> `EnableAnyDest` : boolean

> `AnyDestSettings` : AnyDestSettings Object

*Not Implemented Yet*  

> `PingMode` : empty | "disconnect" | "0ms"

Display mode for Server List Ping.  
服务器列表 Ping 的显示模式

- `disconnect`: Display `(no connection)` on server list. 在服务器列表上显示 无连接。

- `0ms`: Always display 0 ms latency on server list. 始终在服务器列表上显示 0 ms 的延迟。

It will display the latency between client and ZBProxy if empty (or as default) when any Minecraft-related feature is enabled, and display latency between client and target when no Minecraft-related feature is enabled.  
如果为空（或默认），则会在有启用任何与 Minecraft 相关的功能时显示客户端和 ZBProxy 之间的延迟，并在未启用与 Minecraft 相关的功能时显示客户端和目标之间的延迟。

> [!NOTE]  
> "no Minecraft-related feature is enabled" means that you leave both `MotdFavicon` and `MotdDescription` empty, and ZBProxy will proxy any MOTD requests to the target server directly without any modification.
> “未启用与 Minecraft 相关的功能” 即你同时将 `MotdFavicon` 和 `MotdDescription` 留空，此时 ZBProxy 将直接将任何 MOTD 请求转发到目标服务器而不作任何修改。

Refer to our development blog: 请参阅我们的开发博客：  
[十分钟：我们如何把加速 IP 做到 0 ms？](https://www.bilibili.com/read/cv21180654)

> `MotdFavicon` : string (base64 png, 64\*64)

Base64 encoded 64*64 PNG string.  
The size of images must be 64*64, as specified by Minecraft. Because of the PNG format, images can include transparency.  
A proper Base64 PNG string should start with `data:image/png;base64,`.  
You can use [this web application we provide](https://launium.com/app/file-base64.html) to convert PNG image files to Base64 strings.
Base64 编码的 64*64 PNG 字符串。  
图片尺寸必须是 64*64 ，这是由 Minecraft 规定的。由于是 PNG 格式，图片中可以包括透明度。  
正确的 Base64 PNG 字符串应该由 `data:image/png;base64,` 开头。  
你可以使用[我们提供的这个网页小程序](https://launium.com/app/file-base64.html)来将 PNG 图片文件转为 Base64 字符串。

> `MotdDescription` : string

The MOTD for Minecraft server list.  
For more information, go to MOTD page.  
修改 Minecraft 服务器列表的 MOTD。  
更多有关MOTD的信息，前往 MOTD 页。  


## OnlineCount Object

> `Max` : int32

Maximum number of players displayed.  
显示的最大玩家数量。  

> `Online` : int32

Number of online players displayed.  
If `Online` is less than 0, it will be automatically set to the real-time number of players using this service.  
显示的在线玩家数量。  
如果`Online`小于0，会自动设置为使用该服务的实时玩家人数。  

> `EnableMaxLimit` : boolean

Enable max player number limit and use the number in `Max` as the maximum number of players.  
启用最大玩家数量限制，并将`Max`中的数字作为最大玩家数。
