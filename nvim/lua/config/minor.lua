return {
	{
		"ThePrimeagen/Vim-Be-Good",
		opts = {},
		config = function()
			-- vim game
			vim.keymap.set("n", "<leader>vg", "<cmd>VimBeGood<CR>")
		end,
	},
	{
		"linux-cultist/venv-selector.nvim",
		dependencies = {
			{ "nvim-telescope/telescope.nvim", version = "*", dependencies = { "nvim-lua/plenary.nvim" } },
		},
		ft = "python",
		keys = { { ",v", "<cmd>VenvSelect<cr>" } },
		opts = {},
	},
	{
		"nvim-mini/mini.nvim",
		version = false,
		config = function()
			require("mini.surround").setup()
		end,
	},
}
