return {
  "nvim-telescope/telescope-file-browser.nvim",
  lazy = true,
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local fb_actions = require("telescope").extensions.file_browser.actions
    require("telescope").setup {
      extensions = {
        file_browser = {
          mappings = {
            ["n"] = {
              ["g"] = fb_actions.toggle_respect_gitignore,
            },
            ["i"] = {
              ["<C-g>"] = fb_actions.toggle_respect_gitignore,
            }
          }
        }
      }
    }
  end,
}
