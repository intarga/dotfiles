let mapleader =","

call plug#begin('~/.config/nvim/plugged')

" Rust
Plug 'rust-lang/rust.vim'
Plug 'sebastianmarkow/deoplete-rust'

" Go
Plug 'fatih/vim-go'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'stamblerre/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

" C
Plug 'zchee/deoplete-clang'

" Javascript/react
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Misc
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim'
Plug 'w0rp/ale'

" Bin?
Plug 'scrooloose/nerdtree'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'tpope/vim-surround'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-fugitive'
Plug 'LukeSmithxyz/vimling'
Plug 'tpope/vim-commentary'
Plug 'chrisbra/colorizer'
Plug 'editorconfig/editorconfig-vim'

call plug#end()

set bg=light
set mouse=a
set nohlsearch
set clipboard=unnamedplus
" Fix tabs
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
highlight LineNr ctermfg=grey
highlight CursorLineNr ctermfg=red
set nocompatible
filetype plugin on
syntax on
highlight Statement ctermfg=white
set encoding=utf-8
set number relativenumber
nmap ; :
nnoremap ;; ;

" Rust.vim
    let g:rustfmt_autosave = 1

" Deoplete Rust
    let g:deoplete#sources#rust#racer_binary='/home/intarga/.cargo/bin/racer'
    let g:deoplete#sources#rust#rust_source_path='/home/intarga/rust/rust/src'

" Deoplete Clang
    let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so'
    let g:deoplete#sources#clang#clang_header='/usr/lib/clang'

" Vim Go
	let g:go_highlight_types = 1
	let g:go_highlight_fields = 1
	let g:go_hgihlight_functions = 1
	let g:go_highlight_function_calls = 1
	let g:go_highlight_operators = 1
	let g:go_highlight_extra_types = 1

" Deoplete
	let g:deoplete#enable_at_startup = 1
	inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
	let g:deoplete#enable_smart_case = 1
	"highlight Pmenu ctermbg=black ctermfg=red guibg=grey
	highlight Pmenu ctermbg=0 ctermfg=4 guibg=grey
	highlight PmenuSel ctermbg=0 ctermfg=1 guifg=#dddd00 guibg=#1f82cd
	highlight PmenuSbar ctermbg=grey ctermfg=blue guibg=#d6d6d6
	"highlight Pmenu ctermbg=8 guibg=#606060
	"highlight PmenuSel ctermbg=1 guifg=#dddd00 guibg=#1f82cd
	"highlight PmenuSbar ctermbg=0 guibg=#d6d6d6

" Ale
    let g:ale_fixers = {
    \   'javascript': ['prettier', 'eslint'],
    \   'css': ['prettier', 'eslint'],
    \}
    let g:ale_linters = {
    \   'javascript': ['eslint'],
    \   'css': ['eslint'],
	\}
    let g:ale_linters_explicit = 1
    let g:ale_fix_on_save = 1
    let g:ale_completion_enabled = 1

" Enable autocompletion:
	set wildmode=longest,list,full
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Splits open at the bottom and right.
	set splitbelow splitright

" Nerd tree
	map <C-n> :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Airline
	let g:airline_powerline_fonts = 1
	let g:airline_skip_empty_sections = 1
	let g:airline_theme='monochrome'
    let g:airline_solarized_bg='dark'

" Replace all is aliased to S.
	nnoremap S :%s//gc<Left><Left><Left>

" Copy selected text to system clipboard (requires gvim/nvim/vim-x11 installed):
	vnoremap <C-c> "+y
	map <C-p> "+P

" Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %
