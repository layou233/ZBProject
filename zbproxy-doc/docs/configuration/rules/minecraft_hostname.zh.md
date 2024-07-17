# MinecraftHostname

```json
{
    "Type": "MinecraftHostname",
    "Parameter": {
        "Domain": [
            "example.com",
            "list:allow_domains"
        ],
        "DomainSuffix": [
            "example.net",
            ".example.org"
        ]
    }
}
```

!!! note
    你应该先嗅探 Minecraft 协议。

MinecraftHostname 匹配 Minecraft 客户端发送的主机名。

连接到 SRV 服务时，Minecraft 客户端发送的主机名可能不同。展开下面的笔记以了解更多。

??? note
    假设我们在 mc.example.com:25565 有一个 Minecraft 服务器，并且我们有一个指向它的 SRV 记录 (_minecraft._tcp.example.com)。

    因此玩家可以毫无疑问地通过 `example.com` 加入此服务器。但是，客户端在请求 MOTD 和加入游戏时发送不同的主机名。
    客户端将在：

    - 请求 MOTD 时发送 `example.com`，与您在游戏中输入的相同。
    - 加入游戏时发送 `mc.example.com.`。注意最后有一个点号。

    你应该在编写规则、列表时注意这一点。

    离大谱。

参数是一个 RuleDomain 对象，它包含两个 Listable 字段， Domain 和 DomainSuffix。

Domain 中的元素按原样匹配。

DomainSuffix 中的元素在按原样匹配的同时匹配其子域。

!!! note
    “example.net” 的域名后缀包括其自身及其所有子域，例如 “a.example.net” 和 “any.example.net” 。

    但是，“.example.net” 的域名后缀仅包括其所有子域，但不包含 “example.net” 本身。

如果匹配 Domain 和 DomainSuffix 中的任何域名，则该规则被匹配。

你可以通过 "lists:" 前缀和 List Tag 来引用 Lists 中的列表。

它采用优化的压缩前缀树作为其实现算法，因此即使其中有大量域名，既不会占用太多内存，也不会太慢。
