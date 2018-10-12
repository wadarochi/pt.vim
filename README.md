# README for pt.vim

## 说明
本路径用于存放PT同学的各种语言相关的vim设置，包含如下语言：
* txt
* python

除此之外，还存放了PT同学的vim配置以及跨平台vim插件安装脚本（基于dein）。

### 插件列表
* [dein](https://github.com/Shougo/dein.vim) : Dark powered Vim/Neovim plugin manager.
* [YouCompleteMe](https://valloric.github.io/YouCompleteMe/) : A code-completion engine for Vim.
* [NERDTree](https://github.com/scrooloose/nerdtree) : A tree explorer plugin for vim.
* [Hexmode](https://github.com/fidian/hexmode) : Vim plugin to edit binary files in a hex mode automatically.
* [TaskList](https://github.com/vim-scripts/TaskList.vim) : Eclipse like task list.
* [Tagbar](https://majutsushi.github.io/tagbar/) : A class outline viewer for Vim.
* [denite.nvim](https://github.com/Shougo/denite.nvim) : Dark powered asynchronous unite all interfaces for Neovim/Vim8.
* [Vimwiki](https://github.com/vimwiki/vimwiki) : Personal Wiki for Vim.
* [vim-airline](https://github.com/vim-airline/vim-airline) : lean & mean status/tabline for vim that's light as air.
* [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes) : A collection of themes for vim-airline.
* [UltiSnips](https://github.com/SirVer/ultisnips) : The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips!
* [vim-snippets](https://github.com/honza/vim-snippets) : vim-snipmate default snippets (Previously snipmate-snippets).
* [DrawIt](https://github.com/vim-scripts/DrawIt) : Ascii drawing plugin: lines, ellipses, arrows, fills, and more!
* [vim-bracketed-paste](https://github.com/ConradIrwin/vim-bracketed-paste) : Handles bracketed-paste-mode in vim (aka. automatic `:set paste`) .
* [vim-wakatime](https://github.com/wakatime/vim-wakatime) : Vim plugin for automatic time tracking and metrics generated from your programming activity.
* [material.vim](https://github.com/kaicataldo/material.vim) : A dark color scheme for Vim/Neovim based on the Material color scheme.
* [vim-bookmarks](https://github.com/MattesGroeger/vim-bookmarks) : Vim bookmark plugin.
* [vim-signify](https://github.com/mhinz/vim-signify) : Show a diff using Vim its sign column.
* [indentLine](https://github.com/Yggdroot/indentLine) : A vim plugin to display the indention levels with thin vertical lines.
* [pt.vim](https://github.com/wadarochi/pt.vim) : this repo.
* [YCM-Generator](https://github.com/rdnetto/YCM-Generator) : Generates config files for YouCompleteMe.
* [vim-ripgrep](https://github.com/jremmen/vim-ripgrep) : Use RipGrep in Vim and display results in a quickfix list.
* [vimproc.vim](https://github.com/Shougo/vimproc.vim) : Interactive command execution in Vim.
* [lua-support](https://github.com/WolfgangMehner/lua-support) : Edit Lua scripts in Vim/gVim/Neovim. Insert code snippets, run, compile, and check the code and look up help.
* [c-support](https://github.com/WolfgangMehner/c-support) : Edit C/C++ programs in Vim/gVim. Insert code snippets, compile the code, run Make/CMake/... and look up help.
* [vim-searchindex](https://github.com/google/vim-searchindex) : This plugin shows how many times does a search pattern occur in the current buffer.

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
  * 2017-10-28更新，Windows版本可以从这里获取，韦一笑编译版本，不过启动较慢：
        https://www.zhihu.com/question/25437050/answer/95662340

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
