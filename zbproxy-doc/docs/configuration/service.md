# Service

Service is the inbound listener of ZBProxy. All connections come from here.

!!! TIP
    One ZBProxy instance can run multiple services in parallel, depending on the number of Service objects you configure.

## Service Object

```json
{
    "Name": "default",
    "TargetAddress": "",
    "TargetPort": 25565,
    "Listen": 25565,

    "EnableProxyProtocol": false,
    "IPAccess": {},

    "SocketOptions": {},
    "Outbound": {},

    "Minecraft": {},
    "TLSSniffing": {}
}
```

## Fields

### Name

==Required==

The name of the service. Will be printed in the log.

### TargetAddress

==Required==

The address you want to proxy. (without port)

### TargetPort

==Required==

The port of the address you want to proxy. (from 0 to 65535)

### Listen

==Required==

The port you want to listen on 0.0.0.0. (from 0 to 65535)

### EnableProxyProtocol

Enable PROXY protocol listening for inbound connections.

Both PROXY protocol version 1 and 2 are supported.

The full protocol specification can be found at https://www.haproxy.org/download/1.8/doc/proxy-protocol.txt

!!! warning
    This will reject any connection that did not enable PROXY protocol.

    We don't provide compatibiliy for PROXY protocol connections and non-PROXY protocol connections
    because it usually leads to improper configuration and vulnerability.

### IPAccess

Access control module for restricting client IP access.

For more information, go to [access control](shared/access_control.md) page.

### SocketOptions

Native socket options. (Inbound)

For more information, go to [socket options](shared/socket_options.md) page.

## Legacy fields

These fields are from legacy versions of ZBProxy and may get removed in the future releases.

Connections may not be passed to router when legacy fields are used.

### Outbound

Outbound proxy type.

For more information, go to [proxy](shared/proxy.md) page.

### Minecraft

Go to [Minecraft](protocol/minecraft.md) page.

### TLSSniffing

Go to [TLS](protocol/minecraft.md) page.
