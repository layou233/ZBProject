# 套接字选项

套接字选项有两种类型：入站和出站。

服务 使用入站套接字选​​项，而 出站 使用出站套接字选​​项。

启用旧版功能的服务将从入站套接字选​​项复制共享字段以生成出站套接字选​​项。

如果您想要为入站和出站使用不同的套接字选项，请不要使用旧版功能。

## SocketOptions Object

```json title="InboundSocketOptions"
{
    "KeepAliveIdle": "",
    "KeepAliveInterval": "",
    "KeepAliveCount": 0,
    "Mark": 0,
    "SendThrough": "",
    "TCPCongestion": "",
    "TCPFastOpen": false,
    "MultiPathTCP": false
}
```

```json title="OutboundSocketOptions"
{
    "KeepAliveIdle": "",
    "KeepAliveInterval": "",
    "KeepAliveCount": 0,
    "Mark": 0,
    "Interface": "",
    "SendThrough": "",
    "TCPCongestion": "",
    "TCPFastOpen": false,
    "MultiPathTCP": false
}
```

## 字段

### Keep Alive

如果 Idle、Interval 或 Count 字段为零，则使用默认值。

如果所有字段均为负数，则将禁用保持活动。

Idle 和 Interval 的字段类型是持续时间字符串。
持续时间字符串是一个十进制数，有可选的分数和单位后缀，例如“300ms”、“1.5h”或“2h45m”。

有效时间单位为“ns”、“us”（或 “µs”）、“ms”、“s”、“m”、“h”。

有关更多详细信息，请参阅 [Go 文档](https://pkg.go.dev/net#KeepAliveConfig)。

#### KeepAliveIdle

KeepAliveIdle 是在发送第一个保持活动探测之前连接必须处于空闲状态的时间。

如果为零，则使用默认值 15 秒。

#### KeepAliveInterval

KeepAliveInterval 是每次保持活动探测之间的时间。

如果为零，则使用默认值 15 秒。

#### KeepAliveCount

KeepAliveCount 是在断开连接之前可以未答复的最大保持活动探测次数。

如果为零，则使用默认值 9。

### Mark

连接的路由标记。

支持：Linux、FreeBSD（用户 cookie）

### Interface

通过接口名称绑定出站连接的接口。

支持：Linux

### SendThrough

!!! warning
    这是一个实验性功能。如遇到任何问题，请报告。

用于建立出站连接的 IP 地址。

### TCPCongestion

设置连接的拥塞控制算法。

这实际上并不实现算法，而只是告诉内核使用该算法。

因此系统必须支持该算法。

常用选项有：`cubic`、`reno`、`bbr`

支持：Linux

### TCPFastOpen

启用 TCP Fast Open 支持。

要使之生效，您应确保客户端和服务器都具有 TFO 功能。

支持：Linux、Darwin (macOS)、Windows、FreeBSD

### MultiPathTCP

!!! note
    这需要使用 Go 1.21+ 构建 ZBProxy。

启用多路径 TCP 行为支持。由 Go 标准库提供。

如果主机上没有 MPTCP 支持或服务器或客户端不支持 MPTCP，则连接将回退到 TCP。
