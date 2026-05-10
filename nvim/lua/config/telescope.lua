return {
	{
		"nvim-telescope/telescope.nvim",
		version = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		config = function()
			require("telescope").setup({
				pickers = {
					help_tags = {
						prompt_prefix = "Help > ",
					},
					live_grep = {
						theme = "ivy",
						prompt_prefix = "Grep > ",
					},
				},
				extensions = {
					fzf = {},
				},
			})

			require("telescope").load_extension("fzf")

			vim.keymap.set("n", "<leader>sf", require("telescope.builtin").find_files)
			vim.keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep)
			vim.keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags)

			-- use <M-j> and <M-k> to jump between options in a quickfix <C-q>
			vim.keymap.set("n", "∆", "<cmd>cnext<CR>")
			vim.keymap.set("n", "˚", "<cmd>cprev<CR>")
		end,
	},
}
