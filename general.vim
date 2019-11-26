syntax enable

set backspace=indent,eol,start			"Make backspace behave like every other editor
let mapleader = ','				"Change default leader to a comma
set relativenumber
set number					"Activate line numbers
set number relativenumber
set noerrorbells visualbell t_vb=               "No more bells!
set autowriteall                                "Automatically write the file when switching buffers
set complete=.,w,b,u                            "Set our desired autocompletion matching
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4


"-------------Visuals------------"
set t_CO=256					"Force terminal 256 colors
set linespace=15   			        "Macvim-specific line-height.

set guioptions-=l                               "Disable Gui scrollbars.
set guioptions-=L
set guioptions-=r
set guioptions-=R



"-------------Searching-----------"
set hlsearch					"Highlight searching
set incsearch					"Incremental searching


"-------------Split-Managment-------"
set splitbelow					"New windows split below
set splitright					"New windows split right

"/Shorten widow switching keys
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
