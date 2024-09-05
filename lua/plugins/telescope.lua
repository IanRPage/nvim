return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<space>f", "<cmd>Telescope find_files<cr>" },
        { "<space>g", "<cmd>Telescope live_grep<cr>" },
        { "<space>b", "<cmd>Telescope buffers<cr>" },
        { "<space>h", "<cmd>Telescope help_tags<cr>" },
    }
    -- opts = function()
    --     -- set keymaps
    --     local builtin = require('telescope.builtin')
    --     vim.keymap.set('n', '<space>f', builtin.find_files, {})
    --     vim.keymap.set('n', '<space>g', builtin.live_grep, {})
    --     vim.keymap.set('n', '<space>b', builtin.buffers, {})
    --     vim.keymap.set('n', '<space>h', builtin.help_tags, {})
    -- end
}
