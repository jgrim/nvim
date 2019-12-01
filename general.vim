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

" Save session
exec 'nnoremap <Leader>ss :mksession! ~/nvim/sessions/*.vim<C-D><BS><BS><BS><BS><BS>'
" Reload session
exec 'nnoremap <Leader>sl :so ~/nvim/sessions/*.vim<C-D><BS><BS><BS><BS><BS>'

" when at 3 spaces, and I hit > ... go to 4, not 7
set shiftround

" Save your backups to a less annoying place than the current directory.
" If you have .vim-backup in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/backup or . if all else fails.
if isdirectory($HOME . '/.vim/backup') == 0
  :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup

" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.vim/swap') == 0
  :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

" viminfo stores the the state of your previous editing session
if has('nvim')
  set shada+=n~/.nvim/shada
else
  set viminfo+=n~/.vim/viminfo
endif

" This is only present in 7.3+ {{{3
if exists('+undofile')
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif

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
