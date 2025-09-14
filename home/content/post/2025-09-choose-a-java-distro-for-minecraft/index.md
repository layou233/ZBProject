---
title: 指南：为 Minecraft 选择一个合适的 Java 发行版
description: "你的选择很多，但是你应该选择哪一个？"
slug: 2025-09-choose-a-java-distro-for-minecraft
date: 2025-09-08
image: cover.webp
categories:
    - Computer
tags:
    - Minecraft
    - Java
weight: 1
---

和 Sun 公司开发的众多奇迹产品一样，Java 是二十一世纪以来第一个最伟大的语言。
自 2006 年 Sun 宣布将 Java 及 HotSpot 开源并形成 OpenJDK 项目以来，我们看到了无数的由各厂商和社区自定义的 OpenJDK 发行版和衍生版的诞生，甚至出现了几个 HotSpot 以外其他的虚拟机实现。

因此，官方（Oracle）发行的 Java 并不是唯一的选择。
你可以在 [whichjdk.com](https://whichjdk.com) 上找到几款著名 OpenJDK 发行版的介绍（仅供参考，因为我不认可作者的部分观点:-）。

作为指南，我将介绍几个重要概念，并且着重推荐几个你应该尝试的 OpenJDK 发行版。

> 封面来自 whichjdk.com

## 重要概念

### Java 和 OpenJDK 有什么区别？

简单来说：Java 是这门编程语言的名字，同时也是 Oracle 拥有的商标。
OpenJDK 是受官方支持的一款开源且自由的 Java 实现。

因为 Java 及其著名的咖啡杯图标是 Oracle 拥有的商标，所以其他人无法在未经 Oracle 许可的情况下在自己的产品上使用 Java 这个名字。
因此，只有 Oracle 发布的官方的非开源 Oracle JDK 才会使用 Java 这个名字，而其他基于 OpenJDK 衍生的 Java 产品则通常使用 OpenJDK 的名字，并使用著名的尖头企鹅图标，尽管他们都是基于 Java 平台的软件。

### JVM、JRE、JDK、Java FX 分别是什么

简单来说：逐级包含关系。JVM 是程序执行的核心虚拟机，JRE 是在 JVM 之外包含 Java 平台运行库及标准库，JDK 是在 JRE 之外包含开发工具和编译器。

JVM 通常不单独分发，因此最小可用的 Java 发行形式是 JRE。
实际上，非开发者用户只需安装 JRE 即可，并且省下 70% 的空间，不过对于当代计算机来说，这些空间并不重要。

更详细的介绍可参见： https://www.geeksforgeeks.org/java/differences-jdk-jre-jvm/

Java FX 是 Java 最新一代的跨平台 UI 框架，支持现代的前端开发工作流以及硬件加速图形渲染。部分基于 Java 的现代桌面应用基于其实现（如 HMCL），并且也要求运行环境安装。
类似于 OpenJDK，开源的 Java FX 对应项目是 OpenJFX。
与先前两代技术 AWT 和 Swing 不同，Java FX 不包含在 Java 标准库中，当前也通常不随 Java 发行版一同分发。
因此，Java FX 有时需要手动安装，或者也可以下载内置 Java FX 的 Java 发行版。

### 我需要哪些 Java 大版本？

对于 99% 的使用情况，你只需要安装 Java 的 [LTS 版本](https://zh.wikipedia.org/wiki/%E9%95%B7%E6%9C%9F%E6%94%AF%E6%8F%B4)。这些版本更通用，并且更稳定。

这意味着，你需要的版本最多可能是：Java 8、11、17、21、25。

旧版（小于等于 1.12.2）的 Minecraft 可能只能在 Java 8 上运行。1.16 及以后的 Minecraft 要求 Java 17 及以上。1.21 及以后的 Minecraft 要求 Java 21 及以上。

然而，经过我在部分整合包上的测试，要求 Java 17 的 Minecraft 版本通常也在 Java 21 上正常运行。因此我只在电脑上安装了 Java 8 和 Java 21。

截至发稿时，Java 25 还未发布，因此暂不讨论。后续我可能会转到 Java 25，并不再使用 Java 21。更新总是更好。

### 我需要更新 Java 小版本吗？

简单来说：要。并且很重要。

Java 的大版本主要包含功能更新，包括最新的语言特性和虚拟机特性。小版本主要包含安全性补丁和性能改进，未及时更新这些安全补丁可能会为计算机带来风险。
比如旧版的 Java 8 就不支持 TLS 1.3 协议，对 HTTPS 性能和安全性造成实际影响。

Java 版本号格式在历史上变更过很多次，当前我们需要使用的有两种。一种是 Java 8 在使用的风格，一种是最新风格。

对于 Java 8：

> 使用 update 版本号。比如 Java 8, Update 51，即 Java 8 的第 51 个小版本更新，有时也写作 8u51 或 1.8.0_51。8u51 是一个 2015 年发布的很旧的版本，我们将在下文再次提及它。
>
> 较新的版本有时 update 版本号是三位数，如 211。211 并不代表第 211 个小版本更新，而是第 21 个小版本更新的 1 号更新。第三位数字通常具有三个变种，分别为以下含义：
>
> 1. 关键安全更新（PSU） - 经过测试的安全性更新。
> 2. 修正包更新（PSU） - 功能性更新/调整。
> 3. 紧急更新 - 通常为修补前两类更新的缺陷而紧急更新。
>
> 然而，由于他们的版本号约定极其混乱，有时难以分辨😅。总之数字越大的越新（

对于最新的 Java：使用[语义化版本](https://semver.org)号。比如 Java 21.0.8。

### 想要同时使用多种 OpenJDK 发行版？

尝试使用 [SDKMAN!](https://sdkman.io/)。

## 推荐的 Java 发行版

### Azul Zing (Azul Platform Prime)

Azul 是最著名的专业自定义 OpenJDK 厂商之一，一直是 Oracle 产品的有力竞争对手。其中，Azul Zing 是他们的王牌产品。
这个 OpenJDK 分支提供了他们自研的基于 LLVM 的 Falcon JIT 编译器、无停顿的 C4 垃圾收集器以及基于 JIT 缓存和 profile 引导的 ReadyNow 高速冷启动解决方案。

Azul Zing 是目前我最偏好的 OpenJDK，并且已经在我的服务器上运行过多个整合包周目，性能优异，暂未遇到问题。
缺点是目前只支持 Linux，并且是一个商业解决方案，[仅限其流式构建对“评估和开发用途”免费](https://www.azul.com/blog/azul-platform-prime-stream-builds-are-now-free-for-evaluation-development-and-testing/)。
因此，如果你是模组开发者或者私有服务器运维，可以考虑使用这个 OpenJDK。如果你正在运营一个商业化服务器，请不要使用它以避免潜在的法律问题。

你可以在其[官网上下载 Azul Zing](https://www.azul.com/downloads/#prime)，也可以通过他们[官方的软件包仓库及指引](https://docs.azul.com/prime/installation-and-configuration)在各 Linux 发行版上使用包管理器安装。

安装过程很简单，但是你可能需要添加额外的 JVM 参数才能发挥其全部功能。具体请参阅文档。

它是高度自定义的 JDK。

### Azul Zulu (Azul Platform Core)

Azul Zulu 是 Azul 的免费生产就绪级 OpenJDK，具有稳定的更新支持、Java FX选项和可视化安装包的下载选项。
因此，Azul Zulu 对于普通用户来说安装和更新体验都十分友好，是官方 Java 的最佳替代品。你可以在下面的页面找到其下载链接：

https://www.azul.com/downloads/?package=jdk-fx#zulu

Windows 用户下载时请先将鼠标移至“Download”按钮，然后点选下拉框里的“.msi”，即可视化安装包。
推荐的 Java 版本见上方介绍。
建议下载 JDK FX，因为 FX 意为附带 Java FX，但是他们部分 JRE FX 不提供 msi 安装包😅，故作此推荐。

不过 Azul Zulu 虽然几乎是 OpenJDK 的源码，其源代码并不直接公开，这是其一缺点。
然而，由于它是基于 GPLv2 代码的项目，因此你可以[通过电子邮件的方式向 Azul 申请获得其源代码的下载链接](https://stackoverflow.com/questions/19228243/is-azure-azul-jvm-source-code-available-in-a-public-repository)。

### GraalVM

既然 Azul 有这么杀手锏的产品，作为 Java 本家的 Oracle 自然也有好东西应敌。
Oracle GraalVM 是一个使用即时 (JIT) 编译器加速 Java 和 JVM 应用性能的高性能 JDK。它能够降低应用延迟，通过缩短垃圾回收时间提高峰值吞吐量。它同时支持 Linux、Windows、macOS 等多平台。

基于闭源 Oracle JDK 的 Oracle GraaVM 可在其官网下载： https://www.graalvm.org/downloads/

他们还有一个开源的 GraalVM Community Edition，不过其性能会比 Oracle 版稍弱一些。

GraalVM 相比普通的 OpenJDK 来说，拥有一个重写的 JIT 内核。这个 JIT 实现使用 Java 编写并实现自举，是对世纪初更新至今的基于 C++ 编写的 HotSpot Server Mode C2 JIT 的一个替换。
Graal JIT 的表现迅速追平了 C2，并且在现代 Java 语法、激进优化策略方面的支持更好。

Graal JIT 同时也被反向引入了 OpenJDK 中，但目前属于实验性 VM 功能，且需要附带 Graal Compiler 的 OpenJDK 发行版才能使用。
在受支持的发行版上添加下列参数即可切换到 Graal JIT：`-XX:+UnlockExperimentalVMOptions -XX:+UseGraalJIT`

此外，GraalVM Native Image 可提前 (AOT) 编译 Java 字节码，生成可近乎瞬时启动且仅占用极少内存资源的本机可执行文件。
Java 的 AOT 编译并不是什么新概念，且至少已有20年研究历史，世界上运行最广的 Java AOT 编译器就是 Android Runtime，在数十亿生产环境设备已部署十余年之久。
在我来看，这是 Java 在云原生时代的一次补票尝试，然而对于游戏来说，启动时间并不重要，而且 Minecraft 也不能直接使用 GraalVM 进行 AOT 编译，所以我们暂时略过这一点。

它是高度自定义的 JDK。

### Adoptium Temurin

Eclipse Adoptium 是 Eclipse 基金会旗下的顶级项目，先前是 AdoptOpenJDK。一直以来，他们都在提供基于社区的开源生产就绪级 OpenJDK 构建，具有多项认证。它也曾是我的第一选择。

当你想要一个最标准的 OpenJDK 的时候，你需要的就是 Adoptium Temurin。它一度是 OpenJDK 发行版的代名词。

推荐的 Java 版本见上方介绍。你可以在这里找到其下载链接：

https://adoptium.net/temurin/releases

### 其它 OpenJDK

一些具有亮点的 OpenJDK：

- Amazon Corretto: 声称具有综合性能和安全性提升。使用了他们自己的密码学库强化加密表现。
- Alibaba Dragonwell: 阿里巴巴基于其内部部署的 AJDK 的优化内容开发的开源 OpenJDK。
- IBM Semeru Runtime: 即 Eclipse OpenJ9，曾经也在 AdoptOpenJDK 提供。OpenJ9 相比 HotSpot 拥有更优的内存优化，但性能往往不如后者。它是高度自定义的 JDK。

值得一提的是，官方 Minecraft 启动器默认下载的高版本 Java 是 Microsoft Build of OpenJDK。这是一个由 Microsoft 提供的 OpenJDK 构建，猜测是 Microsoft 为了自己的云服务配套以及避免纠纷而提供的服务，没有什么亮点。

对于大部分 OpenJDK 发行版来说（上面描述为“高度自定义的 JDK”的除外），他们几乎就是上游 OpenJDK 的代码，虽然说有“性能提升”，但通常来说不会相差太大，对于实际游戏的影响更是无需抱太大期望。
因此，选择一个易于安装/更新、功能完整、资质充足的 OpenJDK 发行版可能会更好更重要。

## 指北：一些需要立刻注意的事情

### 应尽量及时更新你的 Java

稍微留心 Java 版本的更新。新的 Java 带来的性能与安全性更新通常对你有益。
计算机软件从来都不只是能用就行。

### 8u51：一个 Mojang 留下的坑

官方 Minecraft 启动器默认会为旧版本 Minecraft 下载 Oracle Java 8u51。这一行为也[记录在 Minecraft Wiki](https://minecraft.wiki/w/Tutorial:Update_Java#Notes)。

如上文提到，8u51 是一个相当老的版本，缺失了许多性能和安全更新。
而 Mojang 这么做，可能部分是源于自 8u211 时引入的 [Oracle Java SE 许可证更新](https://www.oracle.com/downloads/licenses/javase-license1.html)。

然而，你作为在这些商业相关许可证范围之外的个人，不必困在这样的大坑里。
因此，跟随上面的介绍，下载并使用一个最新的 OpenJDK 吧~

## 彩蛋

Minecraft 当年爆火，以至于 java.com 上有对 Minecraft 的介绍，尽管只有一句话： https://www.java.com/zh-cn/download/help/minecraft.html