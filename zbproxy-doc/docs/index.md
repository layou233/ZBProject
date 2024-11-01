# ZBProxy

🚀Transfer your network data, bypassing the Hypixel unofficial address detection!  

This is the official document of [ZBProxy](https://github.com/layou233/ZBProxy), maintained by **[@layou233](https://github.com/layou233)**.

This is the document site for ZBProxy 3.1+ configuration.
However, old configuration formats are still supported to run on newer versions for some reasons.

Document for old configuration formats are available at https://launium.com/doc/OldZBProxy

## Downloads
All source code are saved on GitHub. If you need an executable file, go to the GitHub Release page and download the newest one. You can also download a nightly development build at GitHub Action page (login required) at your own risk.

***Please note that ZBProxy is licensed under the [Apache License 2.0](https://github.com/layou233/ZBProxy/blob/master/LICENSE). You should distribute it according to the licensed method.**

You SHOULD include a citation for ZBProxy in a visible place when you use/modify/redistribute it. For example, put "Proudly based on ZBProxy" in the promotion.

### What's the difference between amd64-v1 and amd64-v3?
AMD64 processors (aka AMD & Intel x86_64) are divided to 4 microarchitecture levels according to supported instruction sets. Newer and higher-end processors should have a higher AMD64 level. We build both amd64-v1 binary for most compatibility and amd64-v3 binary for most optimizations. If you are using a V1 CPU, you would not able to execute V3 program. But if you are using a V3 CPU, you can execute both V1 and V3 program, while finding that V3 program performs better than V1 (usually invisible to the human eye, though).

You can find the level of your processor from the [table in this website](https://xanmod.org/#:~:text=x86%2D64%20psABI%20level%20reference%20%5B%20download%20check%20script), or try it by practice.

For more information, go to [Go official wiki](https://go.dev/wiki/MinimumRequirements#amd64) page.

## Disclaimer
**ZBProxy** is a free software of **[@layou233](https://github.com/layou233)** and are in no way associated with Hypixel Inc or Mojang Studios.
