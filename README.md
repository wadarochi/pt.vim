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
* [vim-codequery](https://github.com/wadarochi/vim-codequery) : Search + Browse + Understand your code more efficiently, fork from devjoe. 
* [echodoc.vim](https://github.com/Shougo/echodoc.vim) : Print documents in echo area. I use it for previewing function signature.
* [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags) : A Vim plugin that manages your tag files https://bolt80.com/gutentags/.
* [gutentags_plus](https://github.com/skywind3000/gutentags_plus) : The right way to use gtags with gutentags.
* [vim-preview](https://github.com/skywind3000/vim-preview) : The missing preview window for vim. Awesome plugin!
* [vim-cpp-enhanced-highlight](https://github.com/octol/vim-cpp-enhanced-highlight) : Additional Vim syntax highlighting for C++ (including C++11/14/17).
* [vim-textobj-user](https://github.com/kana/vim-textobj-user) : Vim plugin: Create your own text objects http://www.vim.org/scripts/script.php?script_id=2100.
* [LeaderF](https://github.com/Yggdroot/LeaderF) : An asynchronous fuzzy finder which is used to quickly locate files, buffers, mrus, tags, etc. in large project. Awesome plugin!
* [vim-rfc](https://github.com/mhinz/vim-rfc) : Query RFC database and download RFCs from within Vim.

## 安装步骤
 0. 建议安装的工具们

        # 没有universal-ctags会导致默认的CTRL-]跳转不正常
        # ctags的替代品，因为之前的ctags已经太老了，这个是持续演进的版本
        brew install --HEAD universal-ctags/universal-ctags/universal-ctags
        # 对于比较原始的比如Debian 8.9
        git clone https://github.com/universal-ctags/ctags.git
        cd ctags
        ./autogen.sh
        ./configure --prefix=/where/you/want # defaults to /usr/local
        make
        make install # may require extra privileges depending on where to install

        # GNU global
        brew install global
        cp /usr/local/Cellar/global/6.6.3/share/gtags/gtags.conf ~/.globalrc

        # pygments
        pip install pygments

        # nokogiri, required by vim-rfc
        # Windows
        choco install ruby
        gem install nokogiri

        # macOS
        brew install ruby
        gem install nokogiri

        # Other OSs
        gem install nokogiri

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

2. 因为最新版的denite.nvim依赖Python3的第三方库pynvim，所以需要安装一下：
~~~bash
pip3 install --user pynvim
~~~

如果使用的是Mojave版本的macOS，还需要自己装一下头文件才能用pip3装pynvim：
~~~bash
sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /
~~~

3. 使用gist-vim时需要设置github帐号：
~~~bash
git config --global github.user your_username
~~~

## 当前存在的问题
 1. FIXME: vimproc在安装的时候似乎会报找不到so，看起来就是没有正确的make，但是事实上是装好了，在vim里面功能是正常的，可能是dein的问题。
