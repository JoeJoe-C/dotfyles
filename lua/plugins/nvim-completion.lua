return {
    "hrsh7th/nvim-cmp",
    name = "Neovim Autocompletion",
    url = "https://github.com/hrsh7th/nvim-cmp.git",
    event = "InsertEnter",
    dependencies = {
        "L3MON4D3/LuaSnip",
        build = (function()
            -- build step for support on windows systems for snippets
            -- Remove below to re-enable on windows
            if vim.fn.has "win32" == 1 or vim.fn.executable "make" == 0 then
                return
            end
            return "make install_jsregexp"
        end)(),
    },
    "saadparwaiz1/cmp_luasnip", -- auto completion for lua snip
    "hrsh7th/cmp-buffer", -- adds buffer auto completion
    "hrsh7th/cmp-nvim-lsp", -- adds lsp support auto completion
    "hrsh7th/cmp-path", -- adds auto completion for path
    "hrsh7th/cmp-cmdline", -- adds auto completion for commandline
    config = function()
        -- she `:help cmp` for more information
        local cmp = require "cmp"
        local luasnip = require "luasnip"
        luasnip.config.setup {}

        cmp.setup {
            snippet = {
                expand = function(args)
                    luasnip.ls_expand(args.body)
                end,
            },
            completion = { completeopt = "menu,menuone,noinsert" },

            -- key maps for autocompletion menu!
            mapping = cmp.mapping.preset.insert {
                -- select next item from menu
                ["<C-n>"] = cmp.mapping.select_next_item(),
                -- select previous item from menu
                ["<C-p>"] = cmp.mapping.select_prev_item(),
                -- accept "yes" to completion
                ["<C-y>"] = cmp.mapping.confirm { select = true },
                -- manually trigger completion from nvim-cmp
                ["<C-Space>"] = cmp.mapping.complete {},
            },
            sources = {
                { name = "nvim-lsp" }, -- add LSP for auto completion source
                { name = "luasnip" }, -- add luasnippets for auto completion source
                { name = "path" }, -- add path for auto completion source
            },
        }
    end,
}

