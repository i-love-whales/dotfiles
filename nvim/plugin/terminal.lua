local buf = 0
job_id = nil

vim.api.nvim_create_user_command("ToggleTerminal", function()
	if buf == 0 or not vim.api.nvim_buf_is_valid(buf) then
		vim.cmd.new()
		vim.cmd.term()
		vim.api.nvim_win_set_height(0, 35)

		buf = vim.api.nvim_get_current_buf()
        job_id = vim.bo.channel
	else
		vim.cmd.new()
		vim.api.nvim_win_set_height(0, 35)

		vim.api.nvim_set_current_buf(buf)
	end
end, {})

