# 访问控制

## AccessControl Object

```json
{
    "Mode": "",
    "ListTags": []
}
```

## 字段

### Mode

访问控制模块的工作模式。选项有：

- allow（类似白名单）
- block（类似黑名单）
- ""（空白，禁用访问控制）

### ListTags

List Tag 列表，用于选择一个或多个 List 进行访问控制匹配。

所有列表都在 Root 对象的 `Lists` 字段中定义。

在实际操作过程中，访问控制模块会逐个匹配 List 中的值，直到在某个 List 中找到相同的值。

因此，此列表是有序的，应该尽可能地将匹配命中率较高的 List 放在更靠前的位置来优化性能。