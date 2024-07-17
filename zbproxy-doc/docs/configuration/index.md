# Configuration

At the first launch of ZBProxy, a deafult configuration file will be generated automatically.

Also, if configuration file is not exist, the program will generate a new one.

Configuration file, which is called ZBProxy.json, is used to set all options to unlock the power of ZBProxy.

The file MUST be encoded with UTF-8 (no BOM) or ASCII. Otherwise, it may not work as expected.

## Root Object

```json
{
    "Log": {},
    "Services": [],
    "Router": {},
    "Outbounds": [],
    "Lists": {}
}
```

The configuration content is a valid JSON object called "Root", containing all fields that control every part of ZBProxy.

## Naming definition

### Object

Object is a JSON object. It is a key-value structure like this:

```json
{
    "fieldA": 1,
    "fieldB": "2",
    "fieldC": [3] //(1)!
}
```

1. No ending comma in last field. This is important.

Some fields can be removed if not used.

### List/Array

List/Array is a JSON array. It is an ordered list of zero or more elements, each of which may be of any type.

Arrays use square bracket notation with comma-separated elements.

```json
[0, 1, 23, 456]
```

```json
[
    {
        "object": 1
    },
    {
        "object": 2
    } //(1)!
]
```

1. No ending comma in last element. This is important.

### Listable

Listable is a variable type which can be both single value and an array of values.

For example, a listable field of domain rules can be single value:

```json title="Single"
{
    "Domain": "example.com"
}
```

And also can be an array of values:

```json title="Multi"
{
    "Domain": ["example.com", "example.net"]
}
```
