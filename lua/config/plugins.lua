local function install_plugins()
  vim.cmd("call plug#begin()")
  -- vim.cmd("Plug 'preservim/nerdtree'")
  vim.cmd("Plug 'nvim-lua/plenary.nvim'")
  vim.cmd("Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }")
  -- vim.cmd("Plug 'neoclide/coc.nvim', {'branch': 'release'}")
  -- vim.cmd("Plug 'rust-lang/rust.vim'")
  vim.cmd("Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }")
  -- vim.cmd("Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }")
  -- vim.cmd("Plug 'junegunn/fzf.vim'")
  -- vim.cmd("Plug 'neovim/nvim-lspconfig'")
  -- vim.cmd("Plug 'hrsh7th/cmp-nvim-lsp'")
  -- vim.cmd("Plug 'hrsh7th/cmp-buffer'")
  -- vim.cmd("Plug 'hrsh7th/cmp-path'")
  -- vim.cmd("Plug 'hrsh7th/cmp-cmdline'")
  -- vim.cmd("Plug 'hrsh7th/nvim-cmp'")
  vim.cmd("Plug 'tpope/vim-commentary'")
  vim.cmd("Plug 'rhysd/vim-clang-format'")

    -- " LSP Support
  vim.cmd("Plug 'neovim/nvim-lspconfig'")
  vim.cmd("Plug 'williamboman/mason.nvim'")
  vim.cmd("Plug 'williamboman/mason-lspconfig.nvim'")

  -- " Autocompletion
  vim.cmd("Plug 'hrsh7th/nvim-cmp'")
  vim.cmd("Plug 'hrsh7th/cmp-buffer'")
  vim.cmd("Plug 'hrsh7th/cmp-path'")
  vim.cmd("Plug 'saadparwaiz1/cmp_luasnip'")
  vim.cmd("Plug 'hrsh7th/cmp-nvim-lsp'")
  vim.cmd("Plug 'hrsh7th/cmp-nvim-lua'")

  -- "  Snippets
  vim.cmd("Plug 'L3MON4D3/LuaSnip'")
  vim.cmd("Plug 'rafamadriz/friendly-snippets'")

  vim.cmd("Plug 'VonHeikemen/lsp-zero.nvim'")
  vim.cmd("Plug 'EdenEast/nightfox.nvim'")

  vim.cmd("call plug#end()")


 
end

install_plugins()

vim.g.mapleader = " "
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>pf', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({search = vim.fn.input("Grep > ") });
end)

local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.ensure_installed({
  'eslint',
})
lsp.nvim_workspace()
lsp.setup()


vim.cmd("colorscheme nightfox")
