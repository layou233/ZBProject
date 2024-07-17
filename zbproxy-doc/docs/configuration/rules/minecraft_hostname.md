# MinecraftHostname

```json
{
    "Type": "MinecraftHostname",
    "Parameter": {
        "Domain": [
            "example.com",
            "list:allow_domains"
        ],
        "DomainSuffix": [
            "example.net",
            ".example.org"
        ]
    }
}
```

!!! note
    You should sniff Minecraft protocol before using this.

MinecraftHostname matches the hostname sent by Minecraft client.

Hostname sent by Minecraft clients may be different when connecting to a SRV service. Expand note below to find out.

??? note
    Assume we have a Minecraft server at mc.example.com:25565, and we have a SRV record (_minecraft._tcp.example.com) pointing to it.

    So players can join this server through `example.com` without a problem. However, the client sends different hostname when requesting MOTD and when joining game.
    The client would send:

    - `example.com` when requesting MOTD, the same as you typed in your game.
    - `mc.example.com.` when joining game. Note there is a dot at the end.

    You should keep this in mind when writing rules and lists.

    Too weird.

The parameter is a RuleDomain object, which includes two listable fields, Domain and DomainSuffix.

Elements in Domain are matched as is.

Elements in DomainSuffix are matched both as is and its sub-domains.

!!! note
    Domain suffix of "example.net" includes itself and all its sub-domains, such as "a.example.net" and "any.example.net".

    However, domain suffix of ".example.net" only includes all its sub-domains, but does not include "example.net" itself.

If any domain in Domain and DomainSuffix is matched, the rule is matched.

You can refer to a list from the Lists object of the Root by `lists:` prefix and List Tag.

This uses an optimized compacted trie as its implementation algorithm, so it would neither cost too much memory nor too slow even when having a lot of domains in it.
