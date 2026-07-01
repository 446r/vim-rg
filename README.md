# vim-rg

Use rg in Vim.

## Installation インストール

Clone

```
cd ~/.config/vim/pack/xxx/start/
git clone https://github.com/446r/vim-rg.git
```

vimrc

```
autocmd VimEnter * call vim_rg#Setup()
```

Customize.

```
autocmd VimEnter * call vim_rg#Setup({'command': 'Ripgrep', 'options': ['--vimgrep', '-i']})
```

## Usage 使い方

```
:Rg keyword
```

```
:Rg keyword target_dir
```

```
:Rg -w keyword target_dir
```


## Memo

:grep で rg コマンドが使われればよいだけであれば、以下でよいです。
プラグインは不要です。

```
set grepprg=rg\ --vimgrep\ -uu
```

grepとrgは完全に同じではないので、
:grep は :grep のまま残したい。rg は別のコマンドで使いたい。そんなときのプラグインです。

