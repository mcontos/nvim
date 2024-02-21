return {
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "gopls",
          "bashls",
          "ruby_ls",
          "rubocop",
          "terraformls",
          "tflint",
          "jsonls",
          "yamlls"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Lang Configs
      -- lua
      lspconfig.lua_ls.setup({})

      -- Go
      lspconfig.gopls.setup({})

      -- Bash
      lspconfig.bashls.setup({})

      -- Ruby
      lspconfig.ruby_ls.setup({})
      lspconfig.rubocop.setup({})

      -- Terraform
      lspconfig.terraformls.setup({
        vim.api.nvim_create_autocmd({"BufWritePre"}, {
          pattern = {"*.tf", "*.tfvars"},
          callback = function()
            vim.lsp.buf.format()
          end
        })
      })

      lspconfig.tflint.setup({})

      -- JSON
      lspconfig.jsonls.setup({})

      -- Yaml
      lspconfig.yamlls.setup({})



      -- Keymaps
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})

    end
  }
}
