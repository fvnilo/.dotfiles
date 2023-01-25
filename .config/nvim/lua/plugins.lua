-- Bootstrap lazy.nvim plugin manager
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Install plugins
require('lazy').setup({
  {
    'folke/tokyonight.nvim',
    lazy = false,
    init = function()
      require('tokyonight').setup({ style = 'night' })
      vim.cmd.colorscheme('tokyonight')
    end,
  },
  { 'echasnovski/mini.nvim',
    version = '*',
    init = function()
      require('mini.comment').setup()
      require('mini.completion').setup()
      require('mini.indentscope').setup()
      require('mini.pairs').setup()
      require('mini.starter').setup()
      require('mini.statusline').setup()
      require('mini.tabline').setup()
      require('mini.trailspace').setup()
    end,
  },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    init = function()
      require('telescope').setup()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    init = function()
      require('nvim-treesitter.configs').setup({
        highlight = {
          enable = true,
        },
        ensure_installed = {
          'dockerfile',
          'go',
          'gomod',
          'hcl',
          'lua',
          'rust',
          'yaml',
        },
      })
    end,
  },
  {
    'prichrd/netrw.nvim',
    init = function()
      require('netrw').setup()
    end,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'tpope/vim-vinegar',
    }
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'folke/neodev.nvim',
    },    ft = require('lsp').ftypes(),
    config = function() require 'lsp'.setup() end,
  }
})
