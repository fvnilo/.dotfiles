return {
  {
    "echasnovski/mini.starter",
    opts = {},
  },
  {
    "echasnovski/mini.completion",
    opts = {},
  },
  {
    "echasnovski/mini.cursorword",
    opts = {},
  },
  {
    "echasnovski/mini.trailspace",
    opts = {},
    keys = {
      {
        "<leader>ts",
        "<cmd>lua MiniTrailspace.trim()<CR>",
        desc = "Trim trailing spaces",
      }
    }
  },
  {
    "echasnovski/mini.comment",
    opts = {},
  },
  {
    "echasnovski/mini.extra",
    opts = {},
  },
  {
    "echasnovski/mini.indentscope",
    opts = {
      draw = {
        delay = 0,
        animation = function()
          return 0
        end,
      },
      symbol = "│",
    },
  },
}
