---
icon: material/file-code
---

# Build from source

## Requirement

- Git
- Go 1.20+

The latest version of Go is always recommended. You can download it at https://go.dev/dl/

## Steps

### Clone repository

```shell
git clone https://github.com/layou233/ZBProject
cd ZBProxy
```

It would create a directory named "ZBProxy" and download all code into it. Then enter the directory.

### Check your CPU microarchitecture level

If AMD64 is the architecture of your processor (see Home page), then you may know the microarchitecture level of it.
If not, you can use the script included in the repository to check.
```shell
./check_amd64.sh
```
This step can be skipped if you don't care about performance or you are using a processor of other architectures like ARM.

### Build

If you know your AMD64 architecture level X, set environment variable `GOAMD64` to `vX` (e.g. `v3`).


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

And build with Go command line tool. The following command builds a minimized executable file to the working directory.

```shell
go build -v -trimpath -ldflags="-s -w -buildid=" ./cmd/zbproxy
```

You'll find `zbproxy` (or `zbproxy.exe` on Windows) after Go exits.

All done. Then follow the steps in [Setup](../setup).

### Update in the future

You can update to the latest source code with a single command *in the repository directory*:

!!! warning 
    This will override any local changes! Use it after backing up all valuable changes.

```shell
git pull -f
```

Then build again and replace the executable file with the newer one. Restart your service and enjoy!
