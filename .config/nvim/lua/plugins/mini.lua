return {
  { 'echasnovski/mini.nvim',
    version = '*',
    init = function()
      require('mini.comment').setup()
      require('mini.completion').setup()
      require('mini.indentscope').setup()
      require('mini.pairs').setup()
      require('mini.starter').setup()
      require('mini.statusline').setup()
      require('mini.surround').setup()
      require('mini.tabline').setup()
      require('mini.trailspace').setup()
    end,
  },
}
