return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-context",
    },
    config = function()
        require("nvim-treesitter.configs").setup({
            indent = {
                enable = true
            },
            ensure_installed = {
                "lua",
                "rust",
            },
            highlight = {
                enable = true,
            },
        })
    end
}
