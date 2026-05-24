return {
	{
		"folke/tokyonight.nvim",
		--enabled = false,
		config = function()
			vim.cmd.colorscheme("tokyonight-night")
		end,
	},
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        opts = {
            theme = "tokyonight",
        },
    },
}
