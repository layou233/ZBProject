# Outbounds

出站是连接最终到达的地方。它控制如何处理连接，例如响应或中继。

## Outbound Object

```json
{
    "Name": "default",
    "TargetAddress": "",
    "TargetPort": 0,
    "Dialer": "",

    "SocketOptions": {},
    "ProxyOptions": {},
    "ProxyProtocolVersion": 0,

    "Minecraft": {},
    "TLSSniffing": {},
}
```

## 字段

### Name

==必填==

出站的名称。将用于路由并打印在日志中。

### TargetAddress

出站连接的默认目标地址。

如果连接的元数据中已有目标地址（例如由服务指定或由路由规则重写），则此地址将被覆盖。

### TargetPort

出站连接的默认目标端口。

与上面的 TargetAddress 相同。

### Dialer

拨号器出站的名称，使用另一个出站作为拨号器而不是系统拨号器。

拨号器用于发起出站连接。

这用于构建链式出站。

### SocketOptions

原生套接字选项。（出站）

有关更多信息，请转到 [socket options](shared/socket_options.md) 页面。

### ProxyOptions

出站代理类型。

有关更多信息，请转到 [proxy](shared/proxy.md) 页面。

### ProxyProtocolVersion

PROXY 协议版本号，由 HAProxy 提出。

可用版本为 1 和 2。默认值 0 禁用 PROXY 协议。

PROXY 协议将客户端的源地址传递到远程服务器。
这需要服务器支持。如果您不理解，请不要启用此功能。

完整的协议规范可在此处找到： https://www.haproxy.org/download/1.8/doc/proxy-protocol.txt

### Minecraft

转到 [Minecraft](protocol/minecraft.md) 页面。

### TLSSniffing

转到 [TLS](protocol/minecraft.md) 页面。
