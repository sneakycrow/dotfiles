" Plugins
call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'dracula/vim'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'wokalski/autocomplete-flow'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'Raimondi/delimitMate'
Plug 'https://github.com/rhysd/committia.vim', { 'for': ['gitcommit']}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mxw/vim-jsx'
Plug 'ervandew/supertab'
Plug 'Raimondi/delimitMate'
Plug 'terryma/vim-multiple-cursors'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }
if v:version < 704
	  Plug 'JulesWang/css.vim'
  endif
Plug 'cakebaker/scss-syntax.vim'
Plug 'rust-lang/rust.vim'
call plug#end()

" Theme Stuff
set number
set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
hi xmlAttrib cterm=italic ctermfg=214
set autochdir
set modifiable
syntax on
set t_Co=256
set cursorline
colorscheme dracula
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Deoplete
let g:deoplete#enable_at_startup = 1
" Programming configuration
"
" JS Stuff
autocmd FileType javascript set formatprg=prettier\ --stdin<Paste>


" Remaps
nmap ; :NERDTreeToggle<CR>
inoremap <C-c> <CR><Esc>O
inoremap <;> :NERDTreeToggle<CR>
