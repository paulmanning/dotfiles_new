set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
 " for NeoVim
 
 set number
 syntax enable
 set background=dark
 "colorscheme solarized

 "
" " All of your Plugins must be added before the following line
call vundle#end()            " required
 filetype plugin indent on    " required

 Plugin 'floobits/floobits-neovim'
execute pathogen#infect()
syntax on
 autocmd bufwritepost *.js silent !standard-format -w %
 set autoread
 set statusline+=%#warningmsg#
 set statusline+=%*

filetype plugin indent on
let g:vim_markdown_folding_disabled=1
let NERDTreeDirArrows = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_loc_list=1 " Auto-open errors list
let g:syntastic_javascript_checkers=['jsxhint']
let g:syntastic_loc_list_height=3 " Make window small
set statusline+=\ %=%#warningmsg#
set statusline+=\ %=%{SyntasticStatuslineFlag()}
set statusline+=\ %=%*
let g:SuperTabDefaultCompletionType = "context"

" vim-jsx
let g:jsx_ext_required=0 " Allow JSX in JS files

" Create undo/backup/swap directories if they don't already exist.
if !isdirectory(expand(&backupdir))
  call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
  call mkdir(expand(&directory), "p")
endif
if !isdirectory(expand(&undodir))
  call mkdir(expand(&undodir), "p")
endif

map <c-f> :call JsBeautify()<cr>
set ttyfast
set mouse=a
if !has('nvim')
   set ttymouse=xterm2
endif
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

