---
title: 关于 Forge 使用过的各种主机名标记
description: 编写 Minecraft 代理过程中难以绕过的细节，完全是一团糟。
slug: forge-network-marker
date: 2024-11-04
image: cover.webp
categories:
    - Computer
tags:
    - Minecraft
    - Forge
    - Network
    - ZBProxy
weight: 1
---

Minecraft Forge 一直以来有一个特殊的行为，他们[可能会修改 Minecraft 握手包](https://wiki.vg/Minecraft_Forge_Handshake#Changes_to_Handshake_packet)中的主机名部分。
他们用这个标记来识别一个客户端是否安装了 Forge，因此 Forge 服务器可以在服务器列表上就能向非 Forge 客户端提供警告。这也许是他们想到的实现此功能的唯一方法。

然而，这样的行为实际上是自行约定的，因为 Mojang 没有定过相关标准。Forge 这样写是因为它能正常工作，且兼容官方服务器（因为官方实现也不对此项进行合法性检查），仅此而已。
由于 Forge 的热门度，所有服务器实现或代理都需要兼容这一协议方言。我知道在技术上讲这并不困难，但不影响它实际上是一团糟的事实。

截至公元2024年11月5日，wiki.vg 只在其页面介绍了 FML 协议的两个版本。实际上在 FML2 协议后，Forge 还因为各种包括技术层面和非技术层面的原因进行了版本迭代。
而每次迭代后，主机名末尾的标记都会变化。因此，我将记录这些变化。本文会在未来更新以跟进版本。

## FML 标记迭代表

<table>
	<tr>
	    <th>游戏版本</th>
	    <th>Forge 分支</th>
	    <th>FML 标记</th>
        <th>代码路径</th>
	</tr>
	<tr>
	    <td>[1.7.x, 1.12.2]</td>
	    <td rowspan="3">Official</td>
	    <td>\0FML\0</td>
        <td>patches/minecraft/net/minecraft/network/handshake/client/C00Handshake.java.patch</td>
	</tr>
	<tr>
	    <td>[1.13.x, 1.17.x]</td>
	    <td>\0FML2\0</td>
        <td>src/main/java/net/minecraftforge/fml/network/FMLNetworkConstants.java<br/>或 src/main/java/net/minecraftforge/fmllegacy/network/FMLNetworkConstants.java</td>
	</tr>
	<tr>
	    <td>[1.18.x, 1.20.1]</td>
	    <td>\0FML3\0</td>
        <td>src/main/java/net/minecraftforge/network/NetworkConstants.java</td>
	</tr>
	<tr>
	    <td rowspan="3">[1.20.4, +∞)</td>
	    <td>LexForge</td>
	    <td>\0FORGE</td>
        <td>src/main/java/net/minecraftforge/network/NetworkContext.java</td>
	</tr>
	<tr>
        <td>NeoForge</td>
	    <td>-</td>
        <td>-</td>
	</tr>
</table>

需要注意的是，NeoForge 正式版自游戏版本 1.20.4 开始重构，删除了主机名标记的机制。

由于 Forge 在 1.20.1 前后经历了分叉，可能为了显示与 FML 作者 cpw 的彻底切割，官方 Forge（或称 LexForge）换掉了 FML 标记，改为 FORGE，并且删去了末尾的一个 `\0`。

## 简单的处理办法

由于这些标记均以 `\0` 开头，并且 `\0` 不会出现在合法的主机名中，所以可以直接通过寻找索引的方法分割字符串。

事实上，[Forge 本身](https://github.com/MinecraftForge/MinecraftForge/blob/4b423a30878ed6f933409083f2504706c4795926/src/main/java/net/minecraftforge/network/NetworkContext.java#L100)和 [Velocity](https://github.com/PaperMC/Velocity/blob/08a42b3723633ea5eb6b96c0bb42180f3c2b07eb/proxy/src/main/java/com/velocitypowered/proxy/connection/client/HandshakeSessionHandler.java#L196) 也都使用这种方法。ZBProxy 因此也采用此方法实现。

## 其它现代加载器没有这样的标记

目前为止，Fabric 及其下游加载器没有引入这样的特殊标记。目前不清楚其他模组加载器（包括远古版本的 Forge 和其他加载器）是否引入了类似的标记。