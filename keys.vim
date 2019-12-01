" close the buffer
nmap <leader>db :Bdelete!<cr>

" indent without kill the selection in vmode
vmap < <gv
vmap > >gv

" remap the annoying u in visual mode
vmap u y

" Disable anoying ex mode
nnoremap Q <Nop>

" tabs
nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tn :tabnew<CR>

" move tab to first position
nnoremap tF :tabm 0<CR>
nnoremap tL :tabm<CR>

"Toggle between absolute -> relative line number
nnoremap <C-n> :let [&nu, &rnu] = [&nu, &nu+&rnu==1]<CR>

" Toggle terminal on/off (neovim)
nnoremap <leader>,t :call TermToggle(12)<CR>
inoremap <leader>,t <Esc>:call TermToggle(12)<CR>
tnoremap <leader>,t <C-\><C-n>:call TermToggle(12)<CR>

" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>

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

