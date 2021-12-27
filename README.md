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
| leader gi |coc-implementation | will go to the implementation of function|
| leader rn |coc-rename|rename the selected|
| leader gr |coc-references|will go to the reference |
| leader gf|:GoFmt|fix the styling of the Go files|
|leader gd|:GoDef|go to the def with vim-go|
|leader gt|:GoAddTags|add json tags to the struct|
|leader space|:nohlsearch|highlight removal|
|ctrl+f|:echo expand("%:p")|print the full path|
|cmd+1|:NERDTreeToggle|toggle the NERDTree|

