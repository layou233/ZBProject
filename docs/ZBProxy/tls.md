
# TLSSniffing Object

This feature can help you build a SNI proxy for multi server names.  
此功能可以帮助你搭建多服务器名称的 SNI 中继代理。

> `RejectNonTLS` : boolean

Reject inbound connection if the peer is not a TLS client.  
If not enabled, non-TLS connections will be proxied to target server directly.  
当对端不是 TLS 客户端时阻止该入站连接。  
如果不启用，非 TLS 连接将被直接转发到目标服务器。

> `RejectIfNonMatch` : boolean

Reject inbound connection if the SNI sent by client is not in the allow lists.  
If not enabled, connections with unrecognized SNI will be proxied to target server directly.  
当对端发送的 SNI 不在允许列表时阻止该入站连接。  
如果不启用，具有陌生 SNI 的连接将被直接转发到目标服务器。

> `SNIAllowListTags` : string[]

List of List Tags, which used to select one or more Lists for matching client SNI.  
Any matching SNI will override the connection's target address, making the service functions as an SNI proxy.  
For more information, go to [AccessControl](access.html) page, `ListTags` field.  
一串List Tags，用于选择一个或多个 Lists 进行 客户端 SNI 匹配。  
任何匹配的 SNI 将覆盖连接的目标地址，使服务充当 SNI 代理。  
详见 [访问控制](access.html) 页，`ListTags` 字段。
