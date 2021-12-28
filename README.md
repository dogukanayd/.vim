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

Open vim and;
```sh
:GoInstallBinaries
```

## Mappings
### Go
|key strokes|command|details|
|----------|:----------:|----------:|
|leader rn|coc-rename|rename the selected|
|leader gr|coc-references|go to the reference |
|leader gf|:GoFmt|fix the styling of the Go files|
|leader gd|:GoDef|go to the def with vim-go|
|leader gat|:GoAddTags|add json tags to the struct|
|leader gl|:GoMetaLinter|run all of the linters|
|leader gt|:GoAlternate|go the the test file|
|cmd+ctrl+r|:GoTestFunc|run the test function|

### Vim
| key strokes   |      command      |  details |
|----------|:-------------:|------:|
|leader gi|coc-implementation |go to the implementation of function|
|leader space|:nohlsearch|highlight removal|
|leader vdoc| |open the readme file|
|ctrl+f|:echo expand("%:p")|print the full path|
|cmd+1|:NERDTreeToggle|toggle the NERDTree|
|ctrl+6| |go to the latest location|
|Ag 'search keyword'| | search a keyword|
|bufdo bd!| |close every buffer|
|ctags -R|ctags -R|create ctags for the folder|

### Php
| key strokes   |      command      |  details |
|----------|:-------------:|------:|
|leader lm|php artisan make| |
|leader lfc| | open the controller folder|
|leader lfs| | open the services folder|
|leader n|:call IPhpInsertUse|import classes|
|leader pf|:call PhpCsFixerFixFile()|fix the file by psr2|

## How to?
### How to find and replace in all files?
1. :Gsearch
2. select all of the lines you want to change
3. : s/{keyword}/{keyword}
4. :Greplace
5. press `a` to accept all of the replacements
6. :wa to save all of the changes

### How to change surround?
1. cs ' " -> all of the single quotes on the selected line will be double quotes
2. ds ' -> delete the surrounding single quotes
3. Capital S -> surround the selected text with desired text

### How to sort with Vim?
Select the text block that you want to sort and type :sort

## Brew packages
```sh
brew install the_silver_searcher
brew install ctags
brew install php-cs-fixer
```

## COC packages

```sh
:CocInstall coc-markdown-preview-enhanced
:CocInstall coc-go
:CocInstall coc-webview
```

## Notes
