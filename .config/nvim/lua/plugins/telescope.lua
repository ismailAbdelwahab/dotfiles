return {
    { -- Telescope itself
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    { -- ui select extention
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = { ["ui-select"] = { require("telescope.themes").get_dropdown({}) } },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}