---@type MappingsTable
local M = {}

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },
		["<leader>gg"] = { "<CMD>LazyGit<CR>", "open lazygit", opts = { nowait = true, silent = true } },
	},
}

-- more keybinds!

return M
