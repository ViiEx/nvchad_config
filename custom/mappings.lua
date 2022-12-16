local function termcodes(str)
	return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local M = {}

M.general = {
  n = {
    ["<C-/>"] = { "gcc", "toggle comment" },
    ["<a-cr>"] = { "<cmd>lua require'lspactions'.code_action()<cr>", "Code Action", opts = { silent = true } },
  },

  t = { ["<C-x>"] = { termcodes("<C-\\><C-N>"), "escape terminal mode" } },

  v = {
		["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
		["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
		["<C-/>"] = { "gb", "toggle comment" },
	},
}

return M
