return {
  "mfussenegger/nvim-dap-python",
  dependencies = { "mfussenegger/nvim-dap" },
  lazy = true,
  ft = "python",
  config = function()
    require("dap-python").setup("uv")
  end,
}
