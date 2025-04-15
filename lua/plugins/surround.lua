return {
    "kylechui/nvim-surround",
    cond = true,
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    -- event = { "BufReadPre", "BufNewFile" },
    config = function()
	require("nvim-surround").setup {}
    end
}
