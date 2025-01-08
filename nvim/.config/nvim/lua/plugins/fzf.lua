return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({
      fzf_colors = {
        true,
        -- ["fg"]      = { "fg", "#cdd6f4" },
        -- ["bg"]      = { "bg", "#1e1e2e" },
        -- ["hl"]      = { "fg", "#f38ba8" },
        -- ["fg+"]     = { "fg", "#cdd6f4", "underline" },
        -- ["bg+"]     = { "bg", { "#313244", "Normal" } },
        -- ["hl+"]     = { "fg", "#f38ba8" },
        -- ["info"]    = { "fg", "#cba6f7" },
        -- ["prompt"]  = { "fg", "#cba6f7" },
        -- ["pointer"] = { "fg", "#f5e0dc" },
        -- ["marker"]  = { "fg", "#b4befe" },
        -- ["spinner"] = { "fg", "#f5e0dc" },
        -- ["header"]  = { "fg", "#f38ba8" },
        -- ["gutter"] = "-1",
      },
    })

    vim.keymap.set('n', '<leader>ff', require("fzf-lua").files, {})
    vim.keymap.set('n', '<leader>fg', require("fzf-lua").live_grep, {})
    vim.keymap.set('n', '<leader>ca', require("fzf-lua").lsp_code_actions, {})
    vim.keymap.set('n', '<leader>re', require("fzf-lua").lsp_references, {})
    vim.keymap.set('n', '<leader>df', require("fzf-lua").lsp_definitions, {})
    vim.keymap.set('n', '<leader>dc', require("fzf-lua").lsp_declarations, {})
  end,
}
