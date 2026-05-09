vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	desc = "Set a background color for help window to normal (by default it is darker and it looks very weird",
	pattern = "help",
	callback = function()
		vim.wo.winhighlight = "Normal:Normal,NormalNC:NormalNC"
	end,
})



