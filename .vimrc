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

Plugin 'VundleVim/Vundle.vim' " Plugin manager
Plugin 'flazz/vim-colorschemes' " Just to have a bunch of color schemes available
Plugin 'airblade/vim-gitgutter' " A few git wrapping things
Plugin 'vim-airline/vim-airline' " Status bar
Plugin 'vim-airline/vim-airline-themes' " Status bar colorschemes
Plugin 'fatih/vim-go' " Go support
Plugin 'rust-lang/rust.vim' " Rust support
Plugin 'racer-rust/vim-racer' " Racer (Rust completion) support
Plugin 'stephpy/vim-yaml' " YAML support
Plugin 'pangloss/vim-javascript' " Javascript Support
Plugin 'moll/vim-node' " Nodejs support
Plugin 'junegunn/fzf.vim' " Fuzzy search tool
Plugin 'majutsushi/tagbar' " Code tags layout
Plugin 'tpope/vim-unimpaired' " Mostly for conflict marker navigation
Plugin 'preservim/nerdtree' " File-tree Navigation 
Plugin 'jistr/vim-nerdtree-tabs' " Support tabs within NerdTree

call vundle#end()

" Turns on detection, plugin and indent
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

"" Color scheme
colorscheme Tomorrow-Night
set t_Co=256

" Mappings
"" Use <Space> as Leader key
map <Space> <Leader>

"" Map F2 to Format JSON files
"" Thanks to: https://github.com/floranf/"
map <F2> :%!python -mjson.tool<CR>

"" Toggle Tagbar
nmap <F8> :TagbarToggle<CR>

"" Disable arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Languages
"" Rust
set hidden
let g:racer_cmd = "$HOME/.cargo/bin/racer"
let g:rustfmt_autosave = 1
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

" vim-go goodies
"" Disable (vim-go) Omnicomplete extra buffer
set completeopt=menu
let g:go_fmt_command = "goimports"    " Run goimports along gofmt on each save     
let g:go_auto_type_info = 1           " Automatically get signature/type info for object under cursor     

" vim-airline
let g:airline_theme='zenburn'
let g:airline_powerline_fonts = 1

" fzf
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
nmap <Leader>b :Buffers<CR>
nmap <Leader><space> :Files<CR>
nmap <Leader>f :Ag<CR>

" Nerdtree
" Ctrl+n to open nerd tree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <C-n> :NERDTreeToggle<CR>

" Enable color syntax
syntax on
