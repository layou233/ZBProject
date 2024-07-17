# Router

Router accepts connections from services, matching them with rules, and sending them to outbounds.

## Router Object

```json
{
    "Rules": [],
    "DefaultOutbound": ""
}
```

## Fields

### Rules

Rules is a list of rule objects.

When new connections are passed to the router, they are checked against the rules one by one until they match a rule with an outbound field, and then passed to the outbound.

Rule object is explained below.

### DefaultOutbound

The name of default outbound.

If no rule is matched after checking all rules, the connection will be passed to the default outbound.

If empty, the default outbound is a system dialer. This is for compatibility with legacy versions.

## Rule Object

```json
{
    "Type": "RuleType",
    "Parameter": /* rule type specified field */,
    "Rewrite": {
        "TargetAddress": "",
        "TargetPort": 0,
        "Minecraft": {
            "Hostname": "",
            "Port": 0
        }
    },
    "Sniff": [], //(1)!
    "Outbound": "",
    "Invert": false
}
```

1. This is a listable field, which can also be a single value if there is only one element. See naming definition for more information.

### Type

==Required==

Type name of the rule. Go to the rule catagory in the left for documentation of rule types.

### Parameter

The parameter of the rule.

This field is variable among different rule types.
Go to documentation of specific rule type for more information.

### Rewrite

Rewrite includes a lot of fields to rewrite.

It will rewrite metadata of connections if the rule is matched.
So you can implement some features such as changing target server by rule.

!!! note
    Protocol-related metadata (like Minecraft) need to be sniffed before rewriting.
    Otherwise, it takes no effect.

### Sniff

List of (or single) protocol names to sniff.

This will sniff protocols if the rule is matched.

Available options are:

- all (includes all protocols below)
- minecraft
- tls

Protocols that have already been sniffed will be skipped and will not be sniffed again.

Sniffing has priority, it will be done before rewriting.

### Outbound

The name of outbound.

If the rule is matched and the outbound field is not empty,
the connection will jump out of the matching progress and be passed to outbound.

If empty, it will simply go back to the matching progress and match next rule.

Outbound field has the lowest priority and will be done after sniffing and rewriting.

### Invert

Invert the match result. It has the highest priority and will be done immediately after the matching.
