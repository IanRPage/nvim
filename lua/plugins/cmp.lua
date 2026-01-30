return {
  "hrsh7th/nvim-cmp",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-path", -- cmp path completion
  },
  config = function()
    local cmp = require("cmp")

    cmp.setup {
      preselect = cmp.PreselectMode.None,
      snippet = {
        expand = function(args)
          vim.snippet.expand(args.body) -- if using native Neovim snippets (v0.10+)
        end,
      },
      completion = { -- any constraints I want to add to cmp menu
        keyword_length = 2,
      },
      mapping = {
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Insert,
          select = true,
        },
      },
      -- Installed sources
      sources = {
        { name = "nvim_lsp" },
        { name = "path" },
      },
      --    window = {
      --        completion = cmp.config.window.bordered({
      --     winhighlight = "Normal:Pmenu,FloatBorder:None,CursorLine:PmenuSel,Search:None"
      -- }),
      --        documentation = cmp.config.window.bordered({
      --     winhighlight = "Normal:None,FloatBorder:None,CursorLine:PmenuSel,Search:None"
      -- }),
      --    },
    }
  end,
}
