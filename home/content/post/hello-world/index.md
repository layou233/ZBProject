---
title: Hello World
description: Launium & ZBProject 新主站发布纪念
slug: hello-world
date: 2023-12-02
image: cover.jpg
categories:
    - Website
tags:
    - Daily
weight: 1
---

一直以来都希望认真改造一下 launium.com 的首页。以前采用一个非常著名的 HTML5UP 网页模板，但被我手工改的不成样子，背景的随机图片时常加载不出来，按钮部分还存在由于字符串过长爆框的情况。总结之后改进的需求如下：

- 全静态网页，这对于速度和成本都很有帮助。
- 简单的页面和干净的阅读体验，尽量做到 minimalist。
- 评论系统支持，对 disqus 很感兴趣。
- 能够迁移原主页的一些链接，方便访问者找到文档入口。
- 性能，性能，性能⚡

最后选择了 hugo 作为建站引擎，使用了国人开发的一个 hugo 模板 [CaiJimmy/hugo-theme-stack](https://github.com/CaiJimmy/hugo-theme-stack)。hugo 使用 Go 编写，渲染速度非常快，同时也和 Go 生态深度融合，初体验不错。CaiJimmy/hugo-theme-stack 主题比较符合我的口味，也有很多国人 blogger 常用的功能，最后选用了它。这里深表对这两个项目的感谢与支持！

最后用 Google PageSpeed Insights 和原主页做一个对比。这是原主页最后一版的测试结果：

<https://pagespeed.web.dev/analysis/https-launium-com/11cgbmigxv?form_factor=mobile>

最新的主页测试结果，每次访问都会重新评估：

<https://pagespeed.web.dev/analysis?url=https%3A%2F%2Flaunium.com>
