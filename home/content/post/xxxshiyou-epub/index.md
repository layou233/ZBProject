---
title: "[EPUB] 试着向准备跳下去的同班同学提议「和我XX吧」 简体中文 赤月ヤモリ"
description: 第一次尝试自制 EPUB，使用 Sigil，原文下载自轻之国度。
slug: xxxshiyou-epub
date: 2024-02-03
image: cover.jpg
categories:
    - LightNovel
tags:
    - EPUB
    - Sigil
    - Download
weight: 1
---

tl;dr: 下载链接在文末。

第一次尝试制作了 EPUB 2.0 图文轻小说。使用的是官网下载的 Sigil 当前最新版 2.0.2，跟着 ZC 大佬的视频教程开倍速一步步走很快就做出来了。顺便分享一下 ZC 大佬的视频教程： https://www.bilibili.com/video/BV1CW411r7er/?p=2 。只看这一集就能做出来成色不错的 EPUB。

使用 Sigil 时最大的感受就是重度依赖正则表达式。从纯文本到 HTML 格式的转换，如果不用正则真的不知道怎么办……不过似乎一些大量重复的工作都可以使用一套万能预设正则表达式，日后我如果继续制作 EPUB 可能会整理然后分享。

有一点想吐槽的是，Sigil 声称 "Full UTF-16 support" 结果只是支持导入 UTF-16 的 EPUB 文件（然而这只是作为 XML 解析器的一个基本要求！），保存的 EPUB 一律自动转换为 UTF-8。官方说 UTF-16 大多数情况下没有提升，只是对 CJK 字符的空间略有节省。然而他不考虑一下我们东亚 CJK 用户的感受吗……懒得做 UTF-8 转 UTF-16 的程序，所以文件稍微大一点，不过也不用过意不去啦。另外神奇的是，这个 EPUB 文件通过邮件发送到我的 kindle 后，亚马逊自动帮我把文件大小转换为了 2.8 MB，小了一倍有余，也许就是在字符编码方面做了转换，或者调整了压缩算法……

本书实在是太太太太太冷门了，我在网上没有找到 EPUB 的分享版本，故在此将拙作放出，各位可以随意下载。请尊重原作、译者、校对和我的劳动哦。QwQ

本系列共两卷，EPUB 皆已制作完毕，下载链接以及摘要值都在文末，请自取。

原作者： 赤月ヤモリ 插画： kr 木

以下是本书第一卷的简介：

> 我的初恋对象，古贺胡桃。  
因不像高中生的美貌和性格引起了嫉妒而被孤立了，然后——在她因饱受欺凌差点从屋顶上跳下去之际，我能做的就是——  
「和我做爱吧！」  
「……变态……」  
「也许吧！但是这样好吗？如果死在这里，你人生最后一幕就是“来自变态的告白搭讪”了，这会破坏气氛吧！」  
「……你、你对我做了什么！真是个变态！」  
「这是有原因的。对，因为我是世界上最爱你的！我们结婚吧！！！」  
「诶、诶～～…………？？」  
拼命地呼喊爱，在这个世界上创造你的容身之处！  
由恋爱喜剧史上最笨又直率的主角&沉默易害羞的冷酷JK上演的100%糖度的恋爱喜剧开幕！

![第一卷](cover.jpg)

第二卷简介：

> 笨蛋情侣二人的热恋之火，通过修学旅行后，燃烧得更加猛烈！  
解决了欺凌问题的贵一和胡桃正式成为了恋人。  
这样的二人，即将迎来青春中屈指可数的大型活动之一，修学旅行！京都的寺社佛阁，久违的游乐园与情绪高涨的胡桃。交往后二人的感情，在旅途中逐渐升温……？！  
但是，胡桃桑的表情有点阴沉，看起来就像，不得不在京都与某个人见面一般……  
直男主人公×高冷美少女的甜蜜青春恋爱喜剧，第二弹！

![第二卷](cover2.jpeg)

[===第一卷下载===](试着向准备跳下去的同班同学提议「和我XX吧」第一卷.epub) sha256sum: 80934459300f05cb0f44f5b279d6f2d1739fde76281057aaee9295b5529cc69b

[===第二卷下载===](试着向准备跳下去的同班同学提议「和我XX吧」第二卷.epub) sha256sum: d283220c57df1a1b4a865cef6c58e734ac5d0a6fb31f83cd85116e2cb5b4d1ce