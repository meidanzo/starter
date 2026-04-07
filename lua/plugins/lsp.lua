return {
  {
    "neovim/nvim-lspconfig",
    opts = function()
      return {} -- 禁用 LazyVim 默认 LSP 注入
    end,
    config = function()
      local lspconfig = require("lspconfig")
      local cmp = require("cmp")

      cmp.setup({
        mapping = {
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        },
        sources = {
          { name = "nvim_lsp" },
        },
      })

      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lspconfig.pyright.setup({ capabilities = capabilities })
      lspconfig.clangd.setup({ capabilities = capabilities })

      -- 完全复刻 coc 快捷键
      local map = vim.keymap.set
      map("n", "gd", vim.lsp.buf.definition)
      map("n", "gy", vim.lsp.buf.type_definition)
      map("n", "gi", vim.lsp.buf.implementation)
      map("n", "gr", vim.lsp.buf.references)
      map("n", "K", vim.lsp.buf.hover)
      map("n", "<leader>rn", vim.lsp.buf.rename)
    end,
  },
}