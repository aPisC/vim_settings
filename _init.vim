call plug#begin()
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-surround'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'michaeljsmith/vim-indent-object'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'neovim/nvim-lspconfig'
  " Plug 'OmniSharp/omnisharp-vim'

  Plug 'junegunn/goyo.vim'
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'

  Plug 'ghifarit53/tokyonight-vim'
call plug#end()

set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0
let g:tokyonight_transparent_background = 1

colorscheme tokyonight
let g:airline_theme = "tokyonight"
hi LineNr guibg=#232433


set nu rnu
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro rnu'

" Tab sizes
set tabstop=2
set shiftwidth=2
set expandtab

" Disable wrapping
set nowrap

" CoC configuration
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <Esc> coc#pum#visible() ? coc#pum#cancel() : "<Esc>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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
