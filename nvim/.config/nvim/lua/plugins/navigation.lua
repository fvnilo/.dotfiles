return {
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
}
