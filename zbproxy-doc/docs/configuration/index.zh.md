# 配置

首次启动 ZBProxy 时，将自动生成默认配置文件。

此外，如果配置文件不存在，程序将生成一个新文件。

配置文件名为 ZBProxy.json，用于设置所有选项以完全释放 ZBProxy 的力量。

该文件必须使用 UTF-8（无 BOM）或 ASCII 编码。否则，它可能无法按预期工作。

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

配置内容是一个名为 “Root” 的有效 JSON 对象，其中包含控制 ZBProxy 各个部分的所有字段。

## 命名定义

### Object

Object 是一个 JSON 对象。它是一个键-值结构，如下所示：

```json
{
    "fieldA": 1,
    "fieldB": "2",
    "fieldC": [3] //(1)!
}
```

1. 最后一个字段没有结尾逗号。这很重要。

如果不使用，可以删除某些字段。

### List/Array

List/Array 是一个 JSON 数组。它是一个由零个或多个元素组成的有序列表，每个元素可以是任何类型。

数组使用方括号表示法，元素以逗号分隔。

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

1. 最后一个元素没有结尾逗号。这很重要。
