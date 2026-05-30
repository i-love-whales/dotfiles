return {
	-- Adds git signs in the column line
	{
		"lewis6991/gitsigns.nvim",
        config = function ()
            vim.keymap.set("n", "<leader>gp", require("gitsigns").preview_hunk)
        end
	},
	-- Git Diff
	{
		"axkirillov/unified.nvim",
		config = function()
			require("unified").setup({
				-- your configuration comes here
			})
			vim.keymap.set("n", "]h", function()
				require("unified.navigation").next_hunk()
			end)
			vim.keymap.set("n", "[h", function()
				require("unified.navigation").previous_hunk()
			end)

			vim.keymap.set("n", "<leader>gd", vim.cmd.Unified)
			vim.keymap.set("n", "<leader>gx", "<cmd>:Unified reset<CR>")
		end,
	},
}
