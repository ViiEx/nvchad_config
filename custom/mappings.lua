local function termcodes(str)
	return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local toggle_term_cmd = require("custom.utils").toggle_term_cmd

local M = {}

M.general = {
	n = {
		["<C-_>"] = {
			function()
				require("Comment.api").toggle.linewise.current()
			end,
			"toggle comment",
		},
		["<a-cr>"] = { "<cmd>lua require'lspactions'.code_action()<cr>", "Code Action", opts = { silent = true } },
		["<leader>gg"] = { "<cmd>LazyGit<cr>", "Lazygit" },

		["<leader>tt"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "ToggleTerm horizontal split" },

		["<leader>tr"] = {
			function()
				toggle_term_cmd("ranger")
			end,
			"Open ranger",
		},

		-- Dap Mappings
		["<F5>"] = { "<cmd>lua require'dap'.continue()<cr>", "dap continue" },
		["<F10>"] = { "<cmd>lua require'dap'.step_over()<cr>", "dap step over" },
		["<F11>"] = { "<Cmd>lua require'dap'.step_into()<CR>", "dap step into" },
		["<F12>"] = { "<Cmd>lua require'dap'.step_out()<CR>", "dap step out" },
		["<leader>b"] = { "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", "Toggle breakpoint" },
		["<leader>B"] = {
			"<Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
			"Toggle conditional breakpoint",
		},
		["<leader>lp"] = {
			"<Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))",
			"Set breakpoint",
		},
		["<leader>dr"] = { "<Cmd>lua require'dap'.repl.open()<CR>", "dap replay" },
		["<leader>dl"] = { "<Cmd>lua require'dap'.run_last()<CR>", "dap run last" },
		-- dap UI Toggle
		["<leader>dt"] = { "<cmd>lua require('dapui').toggle()<CR>", "Toggle Dap UI" },
	},

	t = { ["<C-x>"] = { termcodes("<C-\\><C-N>"), "escape terminal mode" } },

	v = {
		["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
		["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
		["<C-_>"] = {
			"<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
			"toggle comment",
		},

		["J"] = { ":m '>+1<CR>gv=gv", "Move lines below" },
		["K"] = { ":m '<-2<CR>gv=gv", "Move lines above" },
	},
}

M.telescope = {
	n = {
		["<leader>fe"] = {
			":lua require'telescope.builtin'.symbols{ sources = {'kaomoji', 'gitmoji'} }<cr>",
			opts = { silent = true },
		},
	},
}

return M
