return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    local config_path = vim.fn.stdpath("config") .. "/.clang-format"

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.clang_format.with({
          filetypes = { "cpp", "c", "hpp", "h", "objc", "objcpp" },
          extra_args = {
            "--style=file",
            "--fallback-style=Google",
            "--assume-filename=" .. config_path,
          },
        }),
      },
    })
  end
}
