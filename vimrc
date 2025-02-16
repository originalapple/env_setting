set hlsearch 
set nu 
set autoindent 
"set scrolloff=2
set wildmode=longest,list
set ts=2 
set sts=2 
set sw=1 
set autowrite 
set autoread 
set cindent 
set bs=eol,start,indent
set history=256
set laststatus=2 
set shiftwidth=2 
set showmatch 
set smartcase 
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set expandtab
set ruler 
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set guioptions-=T
set nowrap
"set cursorline
set mouse=a

if has("syntax")
  syntax on
endif

"------------Vundle Settings here------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'

Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'ryanoasis/vim-devicons'
Plugin 'preservim/nerdtree'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"set list
"set listchars=tab:\ \ ┊
"set listchars=multispace:\ \ ┊

"Setting for Air-line-theme 
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'default'

"Setting for guideline
let g:indentLine_setColors = 1
"let g:indentLine_defaultGroup = 'SpecialKey'
"let g:indentLine_char = '|'
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_guide_size = 1
"let g:indentLine_enabled = 1
let g:indentLine_char = '│'

colorscheme gruvbox
set background=dark
"set guifont=Hack\ Nerd\ Font\ 15

"Setting for C++ & C syntax highlighting
" Disable function highlighting (affects both C and C++ files)
"let g:cpp_function_highlight = 0

" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" Disable highlighting of type names in class, struct, union, enum, using, and
" concept declarations (affects both C and C++ files)
"let g:cpp_type_name_highlight = 0

" Highlight operators (affects both C and C++ files)
let g:cpp_operator_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1


" Setting for python syntax highlighting
let g:python_highlight_all = 1

"에러 표시나는거 없애는 줄
highlight Error NONE
highlight ErrorMsg NONE
au ColorScheme * hi Error NONE
au ColorScheme * hi ErrorMsg NONE

set timeoutlen=1000 ttimeoutlen=0
"Setting for shortcut mapping
nmap <F3> :bp<CR>
nmap <F4> :bn<CR>
" Tab으로 자동완성 선택
"inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Enter로 자동완성 확정
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

"NERDTree shortcut command
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
