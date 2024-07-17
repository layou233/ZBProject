# 代理

ProxyOptions ，先前是 "Outbound"， 用于设置出站代理。

## ProxyOptions (先前是 Outbound) Object

```json
{
    "Type": "",
    "Network": "tcp",
    "Address": ""
}
```

## 字段

### Type

用于远程连接的出站类型。可用的选项有：

- 空字符串 (""), 默认。直接连接到目标。
- "socks"/"socks5". SOCKS 协议版本 5, [RFC1928](https://www.rfc-editor.org/rfc/rfc1928.txt)。
- "socks4a". SOCKS 协议版本 4A, [OpenSSH 保留的定义](https://www.openssh.com/txt/socks4a.protocol)。
- "socks4". SOCKS 协议版本 4, [OpenSSH 保留的定义](https://www.openssh.com/txt/socks4.protocol)。

### Network

用于远程连接的网络类型。可用的选项有：

- "tcp". 伴有 [RFC6555 Happy Eyeballs](https://www.rfc-editor.org/rfc/rfc6555.txt) 支持 (由 Go 标准库提供) 的 IPv4/IPv6 双栈连接。
- "tcp4". 仅 IPv4。
- "tcp6". 仅 IPv6。

### Address

出站服务器的地址（如果 `Type` 不为空），主机名:端口 格式。

例如，"localhost:1080".

!!! note
    此处的 IPv6 地址应使用方括号包裹。例如 "[::1]:1080"。
