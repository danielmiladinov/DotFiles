set nocompatible               " dump the old fashioned vi support!
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set backup                     " keep a backup file
set backupdir=~/_backup        " custom backup directory
set history=100                " keep 100 lines of command line history
set ruler                      " show the cursor position all the time
set showcmd                    " display incomplete commands
set mouse=a                    " enable the mouse
set lazyredraw                 " don't update the display while executing macros
set showmode                   " so you know what mode you are in
set laststatus=2               " always put a status line in.
set scrolloff=3                " start scrolling 3 lines from the top/bottom
set ch=2                       " set command line 2 lines high
set nowrap                     " no line wrapping 
set shiftwidth=4               " round indent actions to multiple of 4
set softtabstop=4              " soft tabs = 4 spaces 
set tabstop=4                  " tabs = 4 spaces
set expandtab                  " expand tabs to spaces
set incsearch                  " do incremental searching
set hlsearch                   " highlight search terms
set nogd                       " Replace all instances when doing global search/replace
set number                     " enable line numbers
set showmatch                  " show matching parenthesis
set hidden                     " allow hidden buffers with unsaved changes
set whichwrap+=<,>,[,]         " allow arrow keys to line wrap
set wildmenu                   " enable enhanced command line completion
set ttyfast                    " faster terminal updates
set virtualedit+=block         " allow virtual-block select to go past end of lines
set vb

syntax on                      " enable syntax highlighting

if has("autocmd")
    filetype on
    filetype indent on
    filetype plugin indent on      " enable file type detection
endif
