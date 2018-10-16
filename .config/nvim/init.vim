" -----------VIM HEADER-----------{{{
"
" Please use with cation this setup will lead to insanity
" <3
" }}}

"-------------AIRLINE-----------------{{{
set t_Co=256
set laststatus=2
let g:Powerline_symbols = 'unicode'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_theme='wombat'
" the separator used on the left side
let g:airline_left_sep=''
" the separator used on the right side
let g:airline_right_sep=''
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.whitespace = ''

"------------RAINBOW PAREN------------
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 1

"}}}

"-----------REMAPS-----------------{{{
" Use ctrl-[hjkl] to select the active split
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
let mapleader = '-'
inoremap jk <Esc>
nnoremap <leader>sv :vsplit .<cr>
noremap <leader>sh :split .<cr>
nnoremap <leader>sr :source $MYVIMRC<cr>
set clipboard=unnamed
"}}}

"-----------AUTO COMMANDS & VIM FILE WRAPS---------------{{{
"Write txt files on open
autocmd BufNewFile *.txt :write
autocmd BufWritePre * %s/\s\+$//e

"-----------VIM FILE WRAPS-----------
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

augroup filetype_i3
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
"}}}

"-----------DISABLED KEYS----------------{{{
inoremap <BS> <Nop>
nnoremap <BS> <Nop>
inoremap <Enter> <Nop>
nnoremap <Enter> <Nop>
inoremap <Del> <Nop>
nnoremap <Del> <Nop>
inoremap <Up> <Nop>
nnoremap <Up> <Nop>
inoremap <Left> <Nop>
nnoremap <Left> <Nop>
inoremap <Right> <Nop>
nnoremap <Right> <Nop>
inoremap <Down> <Nop>
nnoremap <Down> <Nop>
"}}}

" -----------CUSTOM PREFS-----------------{{{
syntax on
filetype plugin indent on
set encoding=utf-8
colo slate
set nocompatible
set number
set relativenumber
set nowrap
set showmode
set tw=80
set smartcase
set smarttab
set smartindent
set autoindent
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
" :<Tab> will be useful now
set wildmenu

"Keep that damn cursor in the center of the screen
set scrolloff=90

" Give me sane tabs
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

"Use z-f and z-o for all basic folding needs
set foldmethod=manual

"}}}

