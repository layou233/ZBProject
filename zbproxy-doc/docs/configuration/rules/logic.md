# Logic

```json title="And"
{
    "Type": "and",
    "Parameter": [
        {
            "Type": "",
            // ...
        },
        {
            "Type": "",
            // ...
        },
        // ...
    ]
}
```

```json title="Or"
{
    "Type": "or",
    "Parameter": [
        {
            "Type": "",
            // ...
        },
        {
            "Type": "",
            // ...
        },
        // ...
    ]
}
```

Logical rules includes two or more sub-rules, and match them for logical result.

When the logic result is true, the rule is matched.

The available types of logical rules are: `and` and `or`. All lower case.

Sub-rules does not execute any sniffing or rewriting even when they are matched.
They are just matching for a result.
