return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "html",
          "volar",
          "tailwindcss",
          "somesass_ls",
          "intelephense",
          "cssls",
          "jsonls",
          "emmet_ls",
          "dockerls",
          "eslint",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local vue_language_server_path = "/Users/brackethive/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server"
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
        init_options = {
          plugins = {
            {
              name = "@vue/typescript-plugin",
              location = vue_language_server_path,
              languages = { "vue" },
            },
          },
        },
        filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.volar.setup({
        capabilities = capabilities,
        filetypes = {
          "vue",
          "typescript",
          "javascript",
          "javascriptreact",
          "json",
          "typescriptreact",
        },
        init_options = {
          typescript = {
            tsdk = "/Users/brackethive/.local/share/nvim/mason/packages/vue-language-server/node_modules/typescript/lib",
          },
          preferences = {
            disableSuggestions = false,
          },
          languageFeatures = {
            implementation = true,
            references = true,
            definition = true,
            typeDefinition = true,
            callHierarchy = true,
            hover = true,
            rename = true,
            renameFileRefactoring = true,
            signatureHelp = true,
            codeAction = true,
            workspaceSymbol = true,
            diagnostics = true,
            semanticTokens = true,
            completion = {
              defaultTagNameCase = "both",
              defaultAttrNameCase = "kebabCase",
              getDocumentNameCasesRequest = false,
              getDocumentSelectionRequest = false,
            },
          },
        },
      })
      lspconfig.tailwindcss.setup({
        capabilities = capabilities,
      })
      lspconfig.somesass_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.intelephense.setup({
        capabilities = capabilities,
      })
      lspconfig.cssls.setup({
        capabilities = capabilities,
      })
      lspconfig.jsonls.setup({
        capabilities = capabilities,
      })
      lspconfig.emmet_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.dockerls.setup({
        capabilities = capabilities,
      })
      lspconfig.eslint.setup({
        capabilities = capabilities,
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gl", vim.diagnostic.open_float, {})
      -- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
