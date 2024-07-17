# 套接字选项

套接字选项有两种类型：入站和出站。

服务 使用入站套接字选​​项，而 出站 使用出站套接字选​​项。

启用旧版功能的服务将从入站套接字选​​项复制共享字段以生成出站套接字选​​项。

如果您想要为入站和出站使用不同的套接字选项，请不要使用旧版功能。

## SocketOptions Object

```json title="InboundSocketOptions"
{
"KeepAlivePeriod": "",
"Mark": 0,
"TCPCongestion": "",
"TCPFastOpen": false,
"MultiPathTCP": false
}
```

```json title="OutboundSocketOptions"
{
"KeepAlivePeriod": "",
"Mark": 0,
"Interface": "",
"TCPCongestion": "",
"TCPFastOpen": false,
"MultiPathTCP": false
}
```

## 字段

### KeepAlivePeriod

KeepAlivePeriod 指定侦听器接受的网络连接的保持活动期。

值是一个持续时间字符串。
持续时间字符串是一个十进制数，有可选的分数和单位后缀，例如“300ms”、“1.5h”或“2h45m”。

有效时间单位为“ns”、“us”（或“µs”）、“ms”、“s”、“m”、“h”。

如果为 0，则在协议和操作系统支持的情况下启用保持活动。

不支持保持活动的网络协议或操作系统将忽略此字段。

如果为负数，则禁用保持活动。

### Mark

连接的路由标记。

支持：Linux、FreeBSD（用户 cookie）

### Interface

通过接口名称绑定出站连接的接口。

支持：Linux

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
