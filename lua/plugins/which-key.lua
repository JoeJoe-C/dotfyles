return {
    "folke/which-key.nvim",
    name = "Which-Key",
    url = "https://github.com/folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {
        -- config comes here
        nil,
    },
}

