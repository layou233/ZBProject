# Socket Options

There are two types of socket options: Inbound and Outbound.

Service uses inbound socket options, while outbound uses outbound socket options.

Service with legacy features enabled will copy shared fields from inbound socket options to generate outbound socket options.
If you want different socket options for inbound and outbound, don't use legacy features.

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

## Fields

### KeepAlivePeriod

KeepAlivePeriod specifies the keep-alive period for network connections accepted by listener.

The value is a duration string.
A duration string is a sequence of decimal numbers,
each with optional fraction and a unit suffix, such as "300ms", "1.5h" or "2h45m".

Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h".

If zero, keep-alives are enabled if supported by the protocol and operating system.
Network protocols or operating systems that do not support keep-alives ignore this field.

If negative, keep-alives are disabled.

### Mark

Routing mark for connections.

Support: Linux, FreeBSD (user cookie)

### Interface

Bind interface for outbound connection by interface name.

Support: Linux

### TCPCongestion

Set congestion control algorithm for connections.

This does not implement the algorithm, but just telling the kernel to use that algorithm.
So the algorithm must be supported by system.

Common options are: `cubic`, `reno`, `bbr`

Support: Linux

### TCPFastOpen

Enable TCP Fast Open support for connections.

To take effect, you should make sure that both client and server have TFO capability.

Support: Linux, Darwin (macOS), Windows, FreeBSD

### MultiPathTCP

!!! note
    This requires ZBProxy to be built with Go 1.21+.

Enable multipath TCP behavior support. Provided by Go standard library.

If MPTCP is not available on the host or not supported by the server or client, connection will fall back to TCP.
