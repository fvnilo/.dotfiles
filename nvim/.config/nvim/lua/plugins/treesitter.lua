return {
    {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    init = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = {
          'dockerfile',
          'go',
          'gomod',
          'hcl',
          'lua',
          'rust',
          'yaml',
        },
        highlight = {
          enable = true,
        },
      })
    end,
  },

}
