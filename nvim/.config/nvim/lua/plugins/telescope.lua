return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    init = function()
      require('telescope').setup({
        defaults = {
          file_ignore_patterns = { "node%_modules/.*", "venv/.*", ".git/*" }
        },
        pickers = {
          find_files = {
            hidden = true
          },
          grep_string = {
            additional_args = {"--hidden"}
          },
          live_grep = {
            additional_args = {"--hidden"}
          },
        },
      })
      local builtin = require('telescope.builtin')

      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end,
  },
}
