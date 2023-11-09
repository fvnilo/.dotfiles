return {
  {
    'EdenEast/nightfox.nvim',
    lazy = false,
    init = function()
      require('nightfox').setup({})
      vim.cmd("colorscheme nightfox")
    end,
  },
}
