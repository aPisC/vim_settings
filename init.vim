call plug#begin()
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-surround'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'michaeljsmith/vim-indent-object'

  Plug 'junegunn/goyo.vim'
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
call plug#end()

set nu rnu
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro rnu'

" Tab sizes
set tabstop=2
set shiftwidth=2
set expandtab

" Disable wrapping
set nowrap

" Fuzzy finder
nnoremap <C-p> :Files<CR>
inoremap <C-p> <Esc>:Files<CR>
nnoremap <C-p><C-p> :Commands<CR>
inoremap <C-p><C-p> <Esc>:Commands<CR>
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

" NERDTree 
nnoremap <C-b> :NERDTreeToggle<CR>
inoremap <C-b> <Esc>:NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

" Save with Ctrl-S
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

" Terminal keys
tnoremap <C-w> <C-\><C-n>

" Remove highlight with ESC
map <esc> :noh <CR>

" Enable Ag fuzzy command
command! -bang -nargs=+ -complete=dir Rag 
        \ call fzf#vim#ag_raw(<q-args> . ' ~/Documents/Projects/',
        \ fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
