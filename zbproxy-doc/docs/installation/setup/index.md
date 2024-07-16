# Setup

Usually, you can complete the deployment by simply running the program.

There are also lots of solutions for a more maintainable deployment.

## Linux

### Screen

Screen is a simple command line utility that multiplexes a physical terminal between several processes, typically interactive shells.

It can keep your process running in the background shell session and prevent it from terminating when the current session is terminated, usually an SSH disconnect.

`screen` may not be included in your distro by default, so you may install it by yourself using the distro package manager.

To create or enter the virtual screen, just type:

```shell
screen -R <screen name or PID>
```

This command will try to enter the screen of that name, and create a new one if not found.

Press Control+A and Control+D to exit the screen.

```shell
screen -list
```

This command will show you all existing screens.

### systemd

systemd is a suite of basic building blocks for a Linux system.
It provides a system and service manager that runs as PID 1 and starts the rest of the system.

systemd is a part of many popular distros and provides a much simpler way to set up a service for users than supervisor.

For more information, go to [systemd](systemd.md) page.

Please note that if your distro is not designed to work with systemd, DO NOT try to install systemd on it.
It touches the core of the system and controls the boot process, which is not guaranteed to be safe to install manually.

## Windows

Double click to run is just enough.

You can also create a service to make it maintained by system. If you don't know how to, there are some service helper programs.

### NSSM

NSSM stands for the "Non-Sucking Service Manager".

NSSM is the recommended Windows service manager. It has a simple GUI which can help you create your own service.

You can find NSSM at https://nssm.cc
