"" Text editing
set number " line numbers
set tabstop=2 shiftwidth=2 " tabs are 2 spaces
set backspace=indent,eol,start
set encoding=utf-8 " encoding
set clipboard=unnamed " use system clipboard
set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fatih/vim-go'
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'tpope/vim-fugitive'
Plugin 'stephpy/vim-yaml'
Plugin 'junegunn/fzf.vim'
Plugin 'majutsushi/tagbar'
call vundle#end()

filetype plugin indent on

" On pressing tab, insert 2 spaces
set expandtab

" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2

"" Searching
set hlsearch " highlight matches
set incsearch " incremental searching
set ignorecase " searches are case insensitive...
set smartcase " ... unless they contain at least one capital letter

"" Line numbers
set nu rnu " Use the hybrid relative and absolute line numbering

"" Rust
set hidden
let g:racer_cmd = "$HOME/.cargo/bin/racer"
let g:rustfmt_autosave = 1
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

"" Color scheme
colorscheme Tomorrow-Night
set t_Co=256

"" Disable (vim-go) Omnicomplete extra buffer
set completeopt=menu
map <Space> <Leader>

" Map F2 to Format JSON files
"" Thanks to: https://github.com/floranf/"
map <F2> :%!python -mjson.tool<CR>

" Toggle Tagbar
nmap <F8> :TagbarToggle<CR>

" vim-go goodies
let g:go_fmt_command = "goimports"    " Run goimports along gofmt on each save     
let g:go_auto_type_info = 1           " Automatically get signature/type info for object under cursor     

" vim-airline
let g:airline_theme='zenburn'
let g:airline_powerline_fonts = 1

" fzf
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
nmap <Leader><space> :Files<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>f :Ag<CR>

" Disable arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

syntax on
