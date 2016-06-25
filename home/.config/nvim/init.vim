call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ddollar/nerdcommenter'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go'
Plug 'freeo/vim-kalisi'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'neomake/neomake'
Plug 'NLKNguyen/papercolor-theme'
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'danro/rename.vim'
Plug 'ethereum/vim-solidity'

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

call plug#end()


" Start NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>


" neomake
autocmd! BufWritePost * Neomake
let g:neomake_open_list = 2


" md == markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_term_mode = "split"
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)


"" Q = q
:command Q q
:command W w

"" control-P custom ignores
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|dist'


" Make Vim to handle long lines nicely.
set nowrap
set textwidth=0
set formatoptions=qrn1
"set relativenumber
set number
set norelativenumber
"let &t_AB="\e[48;5;%dm"
"let &t_AF="\e[38;5;%dm"


" no backup files
"set nobackup
set noswapfile

"set undodir=~/.vim/undodir
"if (v:version >= 703)
"set undofile
"set undolevels=1000 "maximum number of changes that can be undone
"set undoreload=10000 "maximum number lines to save for undo on a buffer reload
"endif
"
au BufNewFile,BufRead *.es6,*.jsx set filetype=javascript
au BufNewFile,BufRead *.tmpl set filetype=html

set backupcopy=yes

set t_Co=256
set background=dark
colorscheme PaperColor
set laststatus=2
let g:airline_theme='PaperColor'
