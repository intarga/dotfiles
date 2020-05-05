let mapleader =" "

call plug#begin('~/.config/nvim/plugged')

" Rust
Plug 'rust-lang/rust.vim'

" Go
Plug 'fatih/vim-go'

" Javascript/react
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Misc
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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

" Colours!
    " Popups
    highlight Pmenu ctermbg=0 ctermfg=4 guibg=grey
    highlight PmenuSel ctermbg=0 ctermfg=1 guifg=#dddd00 guibg=#1f82cd
    highlight PmenuSbar ctermbg=grey ctermfg=blue guibg=#d6d6d6

    " Gutter
    highlight SignColumn ctermbg=black

    " Visual Mode
    highlight Visual ctermbg=grey

" Buffer Navigation
    noremap <Leader>bb :buffers<CR>:buffer<Space>
    noremap <Leader>bn :bn<CR>
    noremap <Leader>bp :bp<CR>
    noremap <Leader>bd :bdelete<CR>
    noremap <Leader>o  :edit<Space>

" Autoclosing
    inoremap " ""<left>
    inoremap ' ''<left>
    inoremap ( ()<left>
    inoremap [ []<left>
    inoremap { {}<left>
    inoremap {<CR> {<CR>}<ESC>O
    inoremap {;<CR> {<CR>};<ESC>O

" C
    set cinoptions+=:0 "stops indentation of case statements

" Rust.vim
    let g:rustfmt_autosave = 1

" Vim Go
    let g:go_highlight_types = 1
    let g:go_highlight_fields = 1
    let g:go_hgihlight_functions = 1
    let g:go_highlight_function_calls = 1
    let g:go_highlight_operators = 1
    let g:go_highlight_extra_types = 1

" Coc
    set updatetime=100 "affects swp files too...

    " Tab completion cycling
    inoremap <silent><expr> <TAB>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<TAB>" :
          \ coc#refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

    function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    " Return completion confirmation
    if exists('*complete_info')
        inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
    else
        inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
    endif

    " GoTo code navigation.
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)

" Enable autocompletion:
    set wildmode=longest,list,full

" Disables automatic commenting on newline:
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Splits open at the bottom and right.
    set splitbelow splitright

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
