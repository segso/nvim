return {
    "projekt0n/github-nvim-theme",
    lazy = false,
    config = function()
        vim.cmd("colorscheme github_dark_high_contrast")
        vim.cmd("highlight Normal guibg=none")
        vim.cmd("highlight NormalNC guibg=none")
        vim.cmd("highlight NonText guibg=none")
    end,
}
