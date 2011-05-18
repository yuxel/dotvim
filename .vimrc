set nocompatible

" init pathogen {
    runtime! autoload/pathogen.vim
    silent! call pathogen#helptags()
    silent! call pathogen#runtime_append_all_bundles()
" }

" general {
    set background=dark
    filetype indent plugin on
    syntax on
    set encoding=utf-8
    set history=1000
" }

" Formatting {
    set autoindent
    set shiftwidth=4
    set expandtab
    set tabstop=4
    set softtabstop=4

    " Filters {
        " remove trailing spaces and force it to end with unix end line
        autocmd FileType html,xhtml,css,js,php,c,cpp,java,python,xml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
    " }
" }

" Keymappings {
    " make tab key shortcuts 
    map <c-T> :tabnew<CR>           "ctrl+t to open a new tab
    map <TAB><TAB> :tabnext<CR>     "tab+tab to move next tab                                            
    map <s-TAB><s-TAB> :tabprev<CR> "shift_tab+shift_tab to move previous tab
" }
