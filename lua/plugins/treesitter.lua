return {
  "nvim-treesitter/nvim-treesitter",
  lazy = true,
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })
  end,
  event = { "BufReadPre", "BufNewFile" },
  -- dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
  config = function()
    require("nvim-treesitter").setup {
      indent = { enable = true },
      ensure_installed = {
        "rust",
        "python",
        "json",
        "c",
        "cpp",
        "lua",
        "comment",
        "vimdoc",
        -- web dev stuff
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "bash",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
      highlight = {
        enable = true,
      }
    }
  end,
}
