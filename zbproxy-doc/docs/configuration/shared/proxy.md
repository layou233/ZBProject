# Proxy

ProxyOptions, formerly "Outbound", is used for setting outbound proxy.

## ProxyOptions (formerly Outbound) Object

```json
{
    "Type": "",
    "Network": "tcp",
    "Address": ""
}
```

## Fields

### Type

Outbound type for remote connections. Available options are:

- empty string (""), default. Connect directly to the target.
- "socks"/"socks5". SOCKS protocol version 5, [RFC1928](https://www.rfc-editor.org/rfc/rfc1928.txt).
- "socks4a". SOCKS protocol version 4A, [specification archived by OpenSSH](https://www.openssh.com/txt/socks4a.protocol).
- "socks4". SOCKS protocol version 4, [specification archived by OpenSSH](https://www.openssh.com/txt/socks4.protocol).

### Network

Network type for remote connections. Available options are:

- "tcp". Dual stack IPv4/IPv6 dial with [RFC6555 Happy Eyeballs](https://www.rfc-editor.org/rfc/rfc6555.txt) support (by Go standard library).
- "tcp4". IPv4 only.
- "tcp6". IPv6 only.

### Address

The address of your outbound server (if `Type` is not empty), in host:port format.

For example, "localhost:1080".

!!! note
    IPv6 addresses here should be wrapped with square brackets. For example, "[::1]:1080".
