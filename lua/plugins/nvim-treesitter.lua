return {
    "nvim-treesitter/nvim-treesitter",
    name = "Nvim Treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter",
    opts = {
        -- list of parser names or all the five listed parsers should always be installed
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "java", "python", "html", "css", "javascript" },
        
        -- Install parsers synchronously (only applies to `ensure_installed`)
        sync_install = false,
        
        -- Auto installs parser when entering buffer
        auto_install = true,

        -- List of parsers to ignore install or "all"a
        -- ignore_install = { "javascript" },
        
        highlight = {
            enabled = true,
        
            additional_vim_regex_highlighting = true, -- for syntax on languages
        },
    },
}
