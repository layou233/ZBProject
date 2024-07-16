# ZBProxy

🚀转发你的网络数据，绕过 Hypixel 非官方域名检测！

这是 [ZBProxy](https://github.com/layou233/ZBProxy) 的官方文档，由 **[@layou233](https://github.com/layou233)** 维护。

这是 ZBProxy 3.1+ 的文档站点。
但是，旧的配置格式因为某些原因仍支持在新版上运行。

旧配置格式的文档可在 https://launium.com/doc/OldZBProxy 找到。

## 下载
所有的源代码都保存在 GitHub 。如果你需要预编译的可执行文件，请前往 GitHub Release 页面并下载最新版本。你也可以在 GitHub Action 页面下载最新的开发版本构建，但可能会承担一定风险。

***请注意 ZBProxy 使用 [Apache License 2.0](https://github.com/layou233/ZBProxy/blob/master/LICENSE) 开源许可证授权。你应该依据其授权的方法对本程序进行分发。**

你应该在使用/修改/重新分发本程序时在目光可及位置提到对本程序的引用。如在推广信息中标明“自豪地基于 ZBProxy”。

### amd64-v1 和 amd64-v3 版本有什么区别？
AMD64 处理器（又称 AMD 和 Intel x86_64）根据支持的指令集分为 4 个微架构级别。较新和更高端的处理器应具有更高的 AMD64 级别。我们构建 amd64-v1 可执行文件以实现最大兼容性，同时也构建 amd64-v3 可执行文件以实现最大优化。如果您使用的是 V1 CPU，则无法执行 V3 程序。但是，如果您使用的是 V3 CPU，则可以同时执行 V1 和 V3 程序，同时发现 V3 程序的性能优于 V1（尽管通常人眼无法察觉）。

你可以在 [该网站的表格中](https://xanmod.org/#:~:text=x86%2D64%20psABI%20level%20reference%20%5B%20download%20check%20script) 找到你的处理器微架构级别，也可以在实践中得出结论。

对于更多信息，前往 [Go 官方 wiki](https://go.dev/wiki/MinimumRequirements#amd64) 页面。


## 免责声明
**ZBProxy** 是一个 **[@layou233](https://github.com/layou233)** 的自由软件，且与 Hypixel Inc 或 Mojang Studios 没有任何关联。
