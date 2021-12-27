# Vim Configuration File

## Installation

```shell
git clone git@github.com:dogukanayd/.vim.git
vim .vimrc
```

.vimrc file should be like;

```text
so ~/.vim/vimrc.vim
```

## Mappings

| key strokes   |      command      |  details |
|----------|:-------------:|------:|
|leader gi|coc-implementation |go to the implementation of function|
|leader rn|coc-rename|rename the selected|
|leader gr|coc-references|go to the reference |
|leader gf|:GoFmt|fix the styling of the Go files|
|leader gd|:GoDef|go to the def with vim-go|
|leader gt|:GoAddTags|add json tags to the struct|
|leader gl|:GoMetaLinter|run all of the linters|
|leader space|:nohlsearch|highlight removal|
|ctrl+f|:echo expand("%:p")|print the full path|
|cmd+1|:NERDTreeToggle|toggle the NERDTree|
|ctrl+6| |go to the latest location|
|Ag 'search keyword'| | search a keyword|
|bufdo bd!| |close every buffer|

## How to?
### How to find and replace in all files?
1. :Gsearch
2. select all of the lines you want to change
3. :s/{keyword}/{keyword}
4. :Greplace
5. press `a` to accept all of the replacements
6. :wa to save all of the changes


## Brew packages
```sh
brew install the_silver_searcher
```
