require("options")

-- [[Lazy Package Manager]]--
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath) -- prepend the runtimepath

--[[Add plugins via Lazy package manager below]]--
--it comes in the form of lazy.setup(plugin, opts)
--the plugin param can be a table or a string, if table it is a list with plugin spec, if string it is a lua module containing plugin spec
--the opts param is optional!
--goto https://github.com/folke/lazy.nvim to learn more!

require("lazy").setup("plugins") -- add plugins via /lua/plugins folder as lua files

