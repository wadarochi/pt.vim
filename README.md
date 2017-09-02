# README for pt.vim

## 说明
本路径用于存放PT同学的各种语言相关的vim设置，包含如下语言：
 * txt
 * python

除此之外，还存放了PT同学的vim配置以及跨平台vim插件安装脚本（基于dein）。

## 安装步骤
 1. 将pt.vim从github上clone到本地

        git clone https://github.com/wadarochi/pt.vim.git

 2. 将script中的内容mv到pt.vim所在的路径，并运行安装脚本。

        # Debian, Ubuntu, Mac
        mv pt.vim/script/* .
        setup_vim.sh

        # FreeBSD
        mv pt.vim/script/* .
        setup_vim_freebsd.sh

 3. 自行安装YouCompleteMe到~/.vim/bundle/YouCompleteMe，这货在Windows和FreeBSD上比较麻烦，只好放弃对C-family的支持，只安装基本版，Linux和Mac平台安装都挺方便的。
 4. 启动vim，等待所有插件安装完毕

        vim

 5. Enjoy ;)

## Tips
 1. 如果你有shadowsocks，如下操作可以有效提升插件安装速度：

~~~bash
git config --global http.proxy 'socks5://127.0.0.1:8087'
git config --global https.proxy 'socks5://127.0.0.1:8087'
~~~

## 当前存在的问题
 1. FIXME: vimproc在安装的时候似乎会报找不到so，看起来就是没有正确的make，但是事实上是装好了，在vim里面功能是正常的，可能是dein的问题。
