# Socket Options

There are two types of socket options: Inbound and Outbound.

Service uses inbound socket options, while outbound uses outbound socket options.

Service with legacy features enabled will copy shared fields from inbound socket options to generate outbound socket options.
If you want different socket options for inbound and outbound, don't use legacy features.

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

## Fields

### Keep Alive

If the Idle, Interval, or Count fields are zero, a default value is chosen.

If all the fields are negative, the keep alive will be disabled.

The field type of Idle and Interval are duration strings.
A duration string is a sequence of decimal numbers, each with optional fraction and a unit suffix, such as "300ms", "1.5h" or "2h45m".

Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h".

See [Go documentation](https://pkg.go.dev/net#KeepAliveConfig) for more details.

#### KeepAliveIdle

KeepAliveIdle is the time that the connection must be idle before the first keep-alive probe is sent.

If zero, a default value of 15 seconds is used.

#### KeepAliveInterval

KeepAliveInterval is the time between keep-alive probes.

If zero, a default value of 15 seconds is used.

#### KeepAliveCount

KeepAliveCount is the maximum number of keep-alive probes that can go unanswered before dropping a connection.

If zero, a default value of 9 is used.

### Mark

Routing mark for connections.

Support: Linux, FreeBSD (user cookie)

### Interface

Bind interface for outbound connection by interface name.

Support: Linux

### SendThrough

!!! warning
    This is an experimental feature. Please report if you encounter any problem.

The IP address to use for outbound connections.

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
