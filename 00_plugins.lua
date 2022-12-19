local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
  -- Deps
  Plug 'nvim-lua/plenary.nvim'

  -- Editor plugins    
  Plug('nvim-telescope/telescope.nvim', { ['tag']= '0.1.0' })
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'sbdchd/neoformat'
  Plug 'ThePrimeagen/harpoon'

  -- Theme and ui
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'junegunn/goyo.vim'
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'vim-airline/vim-airline'
  Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})
  Plug 'junegunn/fzf.vim'

  -- LSP plugins
  Plug 'neovim/nvim-lspconfig'
  Plug 'ray-x/lsp_signature.nvim'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'rafamadriz/friendly-snippets'
  Plug 'mfussenegger/nvim-dap'
  Plug 'rcarriga/nvim-dap-ui'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'folke/trouble.nvim'

  -- Scala lang plugin
  Plug 'scalameta/nvim-metals'

  -- Org language plugins
  Plug 'jceb/vim-orgmode'
vim.call('plug#end')
