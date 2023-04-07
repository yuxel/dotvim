call plug#begin()


Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/sheerun/vim-polyglot.git'
Plug 'https://github.com/dense-analysis/ale.git'

Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>

let g:deoplete#enable_at_startup = 1


let b:ale_linters = ['eslint']
let b:ale_fixers = ['eslint']
let g:ale_fixers = ['eslint']
let g:ale_fixers = ['eslint']
let g:ale_fix_on_save = 1




let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

set number

let mapleader = ','
map <c-T> :tabnew<CR>
map <TAB><TAB> :tabnext<CR>
map <s-TAB><s-TAB> :tabprev<CR>
