return {
  {
    'hashivim/vim-terraform',
    lazy = false,
    config = function()
      local opts = { noremap = true, silent = true }

      vim.cmd([[let g:terraform_fmt_on_save=1]])
      vim.cmd([[let g:terraform_align=1]])

      vim.keymap.set("n", "<leader>ti", ":!terraform init<CR>", opts)
      vim.keymap.set("n", "<leader>tv", ":!terraform validate<CR>", opts)
      vim.keymap.set("n", "<leader>tp", ":!terraform plan<CR>", opts)
      vim.keymap.set("n", "<leader>taa", ":!terraform apply -auto-approve<CR>", opts)
    end,
  }
}
