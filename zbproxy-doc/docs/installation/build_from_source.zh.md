---
icon: material/file-code
---

# 从源码编译

## 要求

- Git
- Go 1.20+

始终推荐使用最新版本的 Go 。你可以在 https://go.dev/dl/ 下载。

## 步骤

### 克隆仓库

```shell
git clone https://github.com/layou233/ZBProject
cd ZBProxy
```

这将创建一个名为 “ZBProxy” 的目录并将所有代码下载于其中。然后进入该目录。

### 检查你的 CPU 微架构级别

如果您的处理器的架构是 AMD64（请参阅 主页），那么您可能知道它的微架构级别。
如果不知道，您可以使用存储库中包含的脚本进行检查。
```shell
./check_amd64.sh
```
如果您不关心性能或者您正在使用其他架构的处理器（如 ARM），则可以跳过此步骤。

### 构建

如果您知道您的 AMD64 架构级别 X，请将环境变量 `GOAMD64` 设置为 `vX`（例如 `v3`）。


=== ":material-bash: Shell"

    ```shell
    export GOAMD64=v3
    ```

=== ":material-powershell: PowerShell"

    ```powershell
    $env:GOAMD64=v3
    ```

=== ":material-microsoft-windows: Windows CMD"

    ```cmd
    set GOAMD64=v3
    ```

使用 Go 命令行工具进行构建。以下命令将最小化的可执行文件构建到工作目录。

```shell
go build -v -trimpath -ldflags="-s -w -buildid=" ./cmd/zbproxy
```

待 Go 退出后，您将找到 `zbproxy` 文件（ Windows 上为 `zbproxy.exe`）。

一切就绪。然后按照 [设置](../setup) 中的步骤操作。

### 在未来更新

你可以*在仓库目录中*使用一行命令来更新到最新源码。

!!! warning 
    这将覆盖任何本地更改！在备份所有有价值的更改后再进行。

```shell
git pull -f
```

然后再次构建并用新构建的可执行文件替换旧的。重启你的服务，然后享受！
