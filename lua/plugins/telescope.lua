return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local telescope = require("telescope")

        telescope.setup()
        telescope.load_extension("fzf")

        vim.keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>")
        vim.keymap.set("n", "<leader>kf", "<cmd>Telescope live_grep<cr>")
    end
}
