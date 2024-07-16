# systemd

## Check if systemd is installed

```shell
ls -l /sbin/init
```

This will show you the actual file the symbolic link `/sbin/init` points to.

You can infer your system daemon from the output. For example, the output would look like this if systemd is used:

```shell
/sbin/init -> /lib/systemd/systemd
```

## Steps

### Create service

```shell
cd /etc/systemd/system
```

Enter the systemd service configuration directory.

Create a new file `zbproxy.service`.

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

1. If you got any error with `network-online.target`, try to replace it with `nss-lookup.target`.
   See https://github.com/layou233/ZBProxy/pull/100 .
2. The directory where the ZBProxy.json configuration is saved.
3. The path of ZBProxy executable file.

You can find the same example at the root directory of the repository.

### Use service

After finishing service configuration, reload the systemd daemon to enable it.

This should only be performed after editing the configuration.

```shell
systemctl daemon-reload
```

Then start the service.

#### Frequently used commands

Start the service:

```shell
systemctl start zbproxy
```

Check service status:

```shell
systemctl status zbproxy
```

Restart service (stop and restart, which will terminate all existing connections):

```shell
systemctl restart zbproxy
```

Reload ZBProxy configuration (keep all existing connections):

This is also automcatically performed when configuration file change is detected by file watcher.

```shell
systemctl reload zbproxy
```

Stop service:

```shell
systemctl stop zbproxy
```

Check log in real time:

```shell
journalctl -u zbproxy -f
```
