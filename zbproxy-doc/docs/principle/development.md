# Development

Developing ZBProxy does not require you to read every line of code and understand them.

Instead, for most purpose, you don't even need to modify ZBProxy.

Starting from version 3.1, ZBProxy supports registering custom rules and sniffers.
You can now add support for new protocols, rules of your own logic without modifying ZBProxy itself.

This makes customization no longer sucks, and make it easier to update code base to the latest version.

We have a official repository for examples of such extensions: https://github.com/layou233/ZBProxy-plugin-examples

## ZBProxy is not a program, it's a library.

Since version 3.1, ZBProxy has been turned into a struct which can be used in any other projects.

No global variables, all controlded by Go contexts, with extension registry support.
It fits all your imaginations.

Want to use ZBProxy in your code? Starting from a one-line command:

```shell
go get github.com/layou233/zbproxy/v3@dev-next
```

All done. Then use `zbproxy.NewInstance` in your code.

See our examples for more information. Code tells all you need.

## Where is the main function of ZBProxy?

The main function is migrated to ./cmd/zbproxy

The main function is now less than 60 lines of code (includes imports) since we have moved most logic to other part of project.

It is only a simple wrapper, which starts a ZBProxy instance and keep listening to process signal.

You can copy this as the base of your customized ZBProxy program.
