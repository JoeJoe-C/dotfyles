return {
    "EdenEast/nightfox.nvim",
    name="NightFox Colourscheme",
    url="https://github.com/EdenEast/nightfox.nvim",
    init=function(plugin)
        vim.cmd("colorscheme duskfox") -- automatically calls this command when starting
    end,
}


