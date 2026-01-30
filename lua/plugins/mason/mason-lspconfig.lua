return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason-lspconfig").setup {
      ensure_installed = {
        "pylsp",
        "rust_analyzer",
        "clangd",
        "ruff",
        "lua_ls",
        "vtsls",
        "html",
        "cssls",
        "tailwindcss",
        "eslint"
      },
    }

    local lspconfig = vim.lsp.config
    require("mason-lspconfig").setup {
      function(server_name)
        lspconfig[server_name].setup({})
      end,

      ["clangd"] = function()
        lspconfig.clangd = {
          cmd = {
            "clangd",
            "--fallback-style=Google",
            "--compile-commands-dir=build",
            "--background-index",
            "--clang-tidy"
          },
        }
      end,

      ["lua_ls"] = function()
        lspconfig.lua_ls = {
          settings = {
            Lua = {
              format = {
                enable = true,
                defaultConfig = {
                  indent_style = "space",
                  indent_size = "2",
                }
              },
              diagnostics = { globals = { "vim" } },
            }
          }
        }
      end,
    }
  end
}
