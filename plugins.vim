call plug#begin(stdpath('config') . '/plugged')

" Ctags
Plug 'dhananjaylatkar/vim-gutentags'
Plug 'dhananjaylatkar/cscope_maps.nvim' " cscope keymaps
"Plug 'folke/which-key.nvim' " optional [for whichkey hints]
"Plug 'nvim-telescope/telescope.nvim' " roptional [for picker='telescope']
"Plug 'ibhagwan/fzf-lua' " optional [for picker='fzf-lua']
"Plug 'nvim-tree/nvim-web-devicons' " optional [for devicons in telescope or fzf]

" NerdTree
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"Vinegar
Plug 'tpope/vim-vinegar'

"CtrlP
Plug 'ctrlpvim/ctrlp.vim'

"Vim-surround
Plug 'tpope/vim-surround'

" Vim registers
Plug 'bfredl/nvim-miniyank'

" Buffer management, close buffer without closing windows
Plug 'moll/vim-bbye'

" Statusbar
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'

" Comment multiple lines
Plug 'tpope/vim-commentary'

" String substitutions
Plug 'tpope/vim-abolish'

" Project management
Plug 'amiorin/vim-project'
Plug 'mhinz/vim-startify'

" Html
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'

" Autocomplete
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-ultisnips'
Plug 'roxma/nvim-yarp'

" Searching / replace
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'wincent/ferret'

" Code quality
Plug 'neomake/neomake'
Plug 'dense-analysis/ale'

" Git plugin
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

" Snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Outline plugin
Plug 'majutsushi/tagbar'

" Auto pairs
Plug 'jiangmiao/auto-pairs'

" Auto close tags
Plug 'alvan/vim-closetag'

" Tabular
Plug 'godlygeek/tabular'

" Markdown
Plug 'tpope/vim-markdown', {'for': 'markdown'}
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()
