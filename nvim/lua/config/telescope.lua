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
					live_grep = {
						theme = "ivy",
					},
				},
				extensions = {
					fzf = {},
				},
			})

			require("telescope").load_extension("fzf")

			vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files)
			vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep)
			vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags)
			vim.keymap.set("n", "<leader>fw", function ()
			    require("telescope.builtin").live_grep({
                    cwd = "$HOME/nobsidian/myvault/notes/English_words"
                })
			end)
            vim.keymap.set('n', '<leader>fb', require("telescope.builtin").buffers)

			-- use <M-j> and <M-k> to jump between options in a quickfix <C-q>
			vim.keymap.set("n", "∆", "<cmd>cnext<CR>")
			vim.keymap.set("n", "˚", "<cmd>cprev<CR>")
		end,
	},
}
