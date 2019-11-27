call plug#begin(stdpath('config') . '/plugged')

" Ctags
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

" NerdTree
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Vim registers
Plug 'bfredl/nvim-miniyank'

" Buffer management, close buffer without closing windows
Plug 'moll/vim-bbye'

" Statusbar
Plug 'itchyny/lightline.vim'

" Comment multiple lines
Plug 'tpope/vim-commentary'

" String substitutions
Plug 'tpope/vim-abolish'

" Project management
Plug 'amiorin/vim-project'
Plug 'mhinz/vim-startify'

" Syntax plugins
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'

" Html
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'

" Autocomplete
Plug 'ncm2/ncm2'
Plug 'phpactor/phpactor',  {'for': 'php', 'do': 'composer install'}
Plug 'phpactor/ncm2-phpactor'

" Searching / replace
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'wincent/ferret'

" Code quality
Plug 'neomake/neomake'

" Refactoring plugins
Plug 'adoy/vim-php-refactoring-toolbox', {'for': 'php'}
Plug '2072/php-indenting-for-vim', {'for': 'php'}

" Git plugin
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

" Snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Outline plugin
Plug 'majutsushi/tagbar'

" Debugging
Plug 'joonty/vdebug'

" PHPDoc
Plug 'tobyS/vmustache' | Plug 'tobyS/pdv', {'for': 'php'}

call plug#end()
