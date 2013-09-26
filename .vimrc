 " This must be first, because it changes other options as a side effect.
 set nocompatible
 
 " SETTINGS
 " 
 filetype plugin indent on
 set encoding=utf-8
 set smarttab
 set noet ci pi sts=0 sw=4 ts=4
 " set noexpandtab
 " set copyindent
 " set preserveindent
 " set softtabstop=0
 " set shiftwidth=4
 " set tabstop=4
 set ignorecase
 set smartcase
 set nowrap
 set textwidth=0
 set autoindent
 set linebreak
 set number
 set cursorline
 set grepformat=%f:%l:%m
 set grepprg=ack\ -A\ 0\ -B\ 0\ --nocolour\ --nogroup\ --column
 set listchars=tab:▶\ ,eol:¬
 set wildignore=*.swp,.git,.svn,*.log,*.gif,*.jpeg,*.jpg,*.png,*.pdf,tmp/**
 set wildmenu                    " show menu when tabbing
 
 set hidden                      " Be more liberal about hidden buffers
 set backspace=indent,eol,start  " backspace over everything
 set numberwidth=5               " Sets the gutter width for line numbers
 set nobackup                    " do not keep a backup file, use an SCM instead
 set history=50                  " keep 50 lines of command line history
 set ruler                       " show the cursor position all the time
 set incsearch                   " do incremental searching
 set hlsearch                    " Highlight all search matches
 set lazyredraw                  " Don't update the display while executing macros
 " set ch=1                        " Make command line two lines high
 set laststatus=2                " Always show the status line
 set showcmd                     " Show the current command in the lower right corner right corner
 set showmode                    " Show the current mode
 set timeoutlen=250              " Short map keys timeout keeps the ui feeling snappy
 set tags=./TAGS,TAGS            " Use Emacs tagfile naming convention
 
 " Keep more context when scrolling off the end of a buffer
 set scrolloff=3
 
 " Store temporary files in a central spot
 set directory=~/.vim-tmp//,~/.tmp//,~/tmp//,/var/tmp//,/tmp
 
 set statusline=
 set statusline+=[%n]\ %<                        " Buffer number
 set statusline+=%.99f\                          " File path
 set statusline+=%w%m%r                          " Flags: window type, is modified, read-only
 set statusline+=%y                              " File type
 set statusline+=%=                              " Right align everything post here
 set statusline+=%-16(\ %l,%c\|%{col('$')-1}\ %) " show line number, cols, total cols
 set statusline+=%P                              " Percentage through file
 set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P	" show git branch
 
 let g:EasyMotion_leader_key = ','
 
 " Command-T Plugin and File Navigation
 let mapleader = ","
 cnoremap %% <C-R>=expand('%:h').'/'<cr>
 nmap <leader>f :CommandTFlush<cr>
 nmap <leader>g :CommandT<cr>
 nmap <leader>gb :CommandTBuffer<cr>
 nmap <leader>gf :CommandT %%<cr>
 nmap <leader>gp :CommandT public<cr>
 nmap <leader>gm :CommandT app/models<cr>
 nmap <leader>gc :CommandT app/controllers<cr>
 nmap <leader>gv :CommandT app/views<cr>
 nmap <leader>ga :CommandT app/assets<cr>
 let g:CommandTMaxHeight = 15

 " Edit
 " clear highlight
 nmap <silent> <leader>/ :noh<CR>
 " map tab key similar to Firefox
 map <D-S-]> gt
 map <D-S-[> gT
 map <D-1> 1gt
 map <D-2> 2gt
 map <D-3> 3gt
 map <D-4> 4gt
 map <D-5> 5gt
 map <D-6> 6gt
 map <D-7> 7gt
 map <D-8> 8gt
 map <D-9> 9gt
 map <D-0> :tablast<CR>

 command! -nargs=* Wrap set wrap linebreak nolist
 
 " Bubble text
 " Bubble single lines
 " nmap <C-Up> [e
 " nmap <C-Down> ]e
 " Bubble multiple lines
 " vmap <C-Up> [egv
 " vmap <C-Down> ]egv

 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 " Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 " Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 " Bundle 'L9'
 " Bundle 'FuzzyFinder'
 
 Bundle 'git://git.wincent.com/command-t.git'
 " Grep commands
 Bundle 'epmatsw/ag.vim'  
 " Line & Block commenting
 Bundle 'tComment'  
 " Align text
 Bundle 'godlygeek/tabular' 
 " Bundle 'jgdavey/tslime.vim'
 Bundle 'scrooloose/nerdtree'
 Bundle 'msanders/snipmate.vim'
 " Tab completion
 " Bundle 'ervandew/supertab' 
 " Properly bubble text
 Bundle 'tpope/vim-unimpaired'
 " Vim themes
 " Bundle 'altercation/vim-colors-solarized'
 " Bundle 'Valloric/YouCompleteMe'
 " git repos on your local machine (ie. when working on your own plugin)
 " Bundle 'file:///Users/gmarik/path/to/plugin'
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
 

 " GUI/TERMINAL ENVIRONMENT SETTINGS
 syntax on

 " if has("gui_running")
 "   set guioptions=egmrt
 "   set guifont=Inconsolata:h18
 " else
  "  set t_Co=256
  " set background=dark
  " colorscheme solarized
 " endif

 " In many terminal emulators the mouse works just fine, thus enable it.
 if has('mouse')
     set mouse=a
 endif
