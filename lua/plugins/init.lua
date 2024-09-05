return {
    {
        "stevearc/conform.nvim",
        event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform",
    },

    -- These are some examples, uncomment them if you want to see them work!
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },
    {
        "kdheepak/lazygit.nvim",
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        -- setting the keybinding for LazyGit with 'keys' is recommended in
        -- order to load the plugin when the command is run for the first time
        keys = {
            { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
        }
    },
    {
        "L3MON4D3/LuaSnip",
        keys = {
            { "<tab>",   false, mode = { "i", "s" } },
            { "<s-tab>", false, mode = { "i", "s" } },
        },
    },
    {
        "hrsh7th/nvim-cmp",
        keys = {
            { "<tab>",   false, mode = { "i", "s" } },
            { "<s-tab>", false, mode = { "i", "s" } },
        },
    },
    {
        "supermaven-inc/supermaven-nvim",
        lazy = false,
        config = function()
            require("supermaven-nvim").setup({
                keymaps = {
                    accept_suggestion = "<tab>",
                    clear_suggestion = "<s-tab>",
                    accept_word = "<C-j>",
                },
            })
        end,
    }, -- {
    -- 	"nvim-treesitter/nvim-treesitter",
    -- 	opts = {
    -- 		ensure_installed = {
    -- 			"vim", "lua", "vimdoc",
    --      "html", "css"
    -- 		},
    -- 	},
    -- },
}
