"execute pathogen#infect()
set nocompatible
filetype off
set expandtab
set tabstop=4
set nu
set shiftwidth=4
"set smartindent
set mouse=a
set hls
syntax enable
set t_Co=256
set background=dark
let g:solarized_termcolors=256
"set background=dark
"let g:solarized_termcolors=256
let g:solarized_termtrans=0
let g:solarized_contrast="high"
let g:solarized_visibility="high"
map  <silent> <F5>    <Esc>:wa<CR>:Make<CR>
"map  <silent> <F8>    <Esc>:cnext<CR>
"map  <silent>         <F9>    @:call C_Run()<CR>
nmap <F9> :SCCompile<cr>
nmap <F10> :SCCompileRun<cr>
inoremap <F4> <c-o>:w<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-dispatch'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'sjl/badwolf'
call vundle#end()

colorscheme badwolf
let g:badwolf_darkgutter = 1
filetype plugin indent on
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

filetype plugin on
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

"hi IndentGuidesOdd  ctermbg=black
"hi IndentGuidesEven ctermbg=darkgrey
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black   ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=darkgrey

