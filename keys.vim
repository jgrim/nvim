
"-------------Mappings-----------"

"Make it easy to edit vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Edit snippet file
nmap <Leader>es :tabedit ~/.vim/snippets/

"Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle
nmap <Leader>w :NERDTreeToggle<cr>

"Browse symbols
nmap <Leader>r :CtrlPBufTag<cr>

"Most recently used files
nmap <Leader>e :CtrlPMRUFiles<cr>

"Map CtrlP to use Leader
nmap <Leader>p :CtrlP<cr>

"Ctags with Ctrlp
nnoremap <Leader>. :CtrlPTag<cr>

"Map tag find
nmap <Leader>f :tag<space>

"Spell checking
map <Leader>ss :setlocal spell!<cr>

"Exit terminal mode with esc
tnoremap <Esc> <C-\><C-n>
