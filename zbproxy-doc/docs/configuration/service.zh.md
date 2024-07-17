# Service

Service 是 ZBProxy 的入站监听器。所有连接都来自这里。

!!! TIP
    一个 ZBProxy 实例可以并行运行多个服务，具体取决于您配置的 Service 对象数量。

## Service Object

```json
{
    "Name": "default",
    "TargetAddress": "",
    "TargetPort": 25565,
    "Listen": 25565,

    "IPAccess": {},

    "SocketOptions": {},
    "Outbound": {},

    "Minecraft": {},
    "TLSSniffing": {}
}
```

## 字段

### Name

==必填==

服务的名称。将打印在日志中。

### TargetAddress

==必填==

要代理的地址。（不带端口）

### TargetPort

==必填==

要代理的地址的端口。（从 0 到 65535）

### Listen

==必填==

要监听的端口为 0.0.0.0。（从 0 到 65535）

### IPAccess

用于限制客户端 IP 访问的访问控制模块。

有关更多信息，请转到 [access control](shared/access_control.md) 页面。

### SocketOptions

原生套接字选项。（入站）

有关更多信息，请转到 [socket options](shared/socket_options.md) 页面。

## 旧字段

这些字段来自 ZBProxy 的旧版本，可能会在未来版本中删除。

使用旧字段时，连接可能不会被传递到路由器。

### Outbound

出站代理类型。

有关更多信息，请转到 [proxy](shared/proxy.md) 页面。

### Minecraft

转到 [Minecraft](protocol/minecraft.md) 页面。

### TLSSniffing

转到 [TLS](protocol/tls.md) 页面。
