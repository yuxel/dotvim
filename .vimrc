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

" Vim UI {
	set tabpagemax=15 				" only show 15 tabs
	set showmode                   	" display the current mode

	set cursorline  				" highlight current line

	if has('cmdline_info')
		set ruler                  	" show the ruler
		set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
		set showcmd                	" show partial commands in status line and
									" selected characters/lines in visual mode
	endif

	if has('statusline')
        set laststatus=2

		" Broken down into easily includeable segments
		set statusline=%<%f\    " Filename
		set statusline+=%{fugitive#statusline()} "  Git Hotness
		set statusline+=\ [%{getcwd()}]          " current dir
		set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
	endif

	set backspace=indent,eol,start	" backspace for dummys
	set linespace=0					" No extra spaces between rows
	set nu							" Line numbers on
	set showmatch					" show matching brackets/parenthesis
	set incsearch					" find as you type search
	set hlsearch					" highlight search terms
	set ignorecase					" case insensitive search
	set smartcase					" case sensitive when uc present
	set wildmenu					" show list instead of just completing
	set wildmode=list:longest,full	" command <Tab> completion, list matches, then longest common part, then all.
	set whichwrap=b,s,h,l,<,>,[,]	" backspace and cursor keys wrap to
	set scrolljump=5 				" lines to scroll when cursor leaves screen
	set scrolloff=3 				" minimum lines to keep above and below cursor
"set foldenable  				" auto fold code
	set gdefault					" the /g flag on :s substitutions by default

" }


" misc {
    set nofoldenable
" }
