# Outbounds

Outbound is where the connection finally goes. It controls how connections will be handled, such as responding or relaying.

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

## Fields

### Name

==Required==

The name of the outbound. Will be used for routing and be printed in the log.

### TargetAddress

The default target address of outbound connections.

This will be overridden if connection already has a target address in its metadata, such as
being specified by service or getting rewritten by routing rule.

### TargetPort

The default target port of outbound connections.

Works the same as TargetAddress above.

### Dialer

The name of a dialer outbound, making use of another outbound as dialer instead of system dialer.

Dialer is used to create outbound connections.

This is used to construct a chained outbound.

### SocketOptions

Native socket options. (Outbound)

For more information, go to [socket options](shared/socket_options.md) page.

### ProxyOptions

Outbound proxy type.

For more information, go to [proxy](shared/proxy.md) page.

### ProxyProtocolVersion

Version of PROXY protocol proposed by HAProxy.

Available versions are 1 and 2. The default value 0 disables the PROXY protocol.

PROXY protocol will pass the source address of client to remote server.
This requires server support. Don't enable this if you don't understand it.

The full protocol specification can be found at https://www.haproxy.org/download/1.8/doc/proxy-protocol.txt

### Minecraft

Go to [Minecraft](protocol/minecraft.md) page.

### TLSSniffing

Go to [TLS](protocol/minecraft.md) page.
