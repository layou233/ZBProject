# systemd

## 检查是否安装了 systemd

```shell
ls -l /sbin/init
```

这将向您显示符号链接 `/sbin/init` 指向的实际文件。

您可以从输出中推断出您的系统守护进程。例如，如果使用 systemd，则输出将如下所示：

```shell
/sbin/init -> /lib/systemd/systemd
```

## 步骤

### 创建服务

```shell
cd /etc/systemd/system
```

进入 systemd 服务配置目录。

创建一个新文件 `zbproxy.service`。

``` ini title="zbproxy.service"
[Unit]
Description=ZBProxy Service
Documentation=https://github.com/layou233/ZBProxy
After=network-online.target #(1)!

[Service]
Type=simple
WorkingDirectory=/usr/local/etc/zbproxy #(2)!
ExecStart=/usr/local/bin/zbproxy #(3)!
ExecReload=/bin/kill -s HUP $MAINPID
KillSignal=SIGTERM
Restart=on-failure

[Install]
WantedBy=multi-user.target
```

1. 如果 `network-online.target` 出现任何错误，请尝试将其替换为 `nss-lookup.target`。
   请参阅 https://github.com/layou233/ZBProxy/pull/100 。
2. ZBProxy.json 配置保存的目录。
3. ZBProxy 可执行文件的路径。

您可以在仓库的根目录中找到相同的示例。

### 使用服务

完成服务配置后，重新加载 systemd 守护程序以启用它。

仅在编辑配置后才应执行此操作。

```shell
systemctl daemon-reload
```

然后启动服务。

#### 常用命令

启动服务：

```shell
systemctl start zbproxy
```

检查服务状态：

```shell
systemctl status zbproxy
```

重启服务（停止后重启，将终止所有现有连接）：

```shell
systemctl restart zbproxy
```

重载 ZBProxy 配置（保持所有现有连接）：

这也会在文件监视器检测到配置文件变更时自动执行。

```shell
systemctl reload zbproxy
```

停止服务：

```shell
systemctl stop zbproxy
```

检查实时日志：

```shell
journalctl -u zbproxy -f
```
