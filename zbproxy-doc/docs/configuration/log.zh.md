# Log

## Log Object

```json
{
    "Level": "info"
}
```

### 字段

#### Level

日志的等级。可用的选项有：

- trace （最低）
- debug
- info
- warn
- error
- fatal
- panic （最高）

选择的等级越低，越多的信息会被打印用于辅助你找到问题。

默认的等级是 `debug` 。
