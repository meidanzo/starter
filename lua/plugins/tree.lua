return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    config = function()
      require("nvim-tree").setup({})

      vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>")
      vim.keymap.set("n", "<C-f>", "<cmd>NvimTreeFindFile<CR>")
      vim.keymap.set("n", "<leader>n", "<cmd>NvimTreeFocus<CR>")
      vim.keymap.set("n", "<C-x>f", "<cmd>NvimTreeToggle<CR>")
    end,
  },
}