-- overriding default plugin configs!

local M = {}

M.treesitter = {
	ensure_installed = {
		"vim",
		"html",
		"css",
		"javascript",
		"json",
		"toml",
		"markdown",
		"c",
		"bash",
		"lua",
		"norg",
		"tsx",
		"typescript",
		"php",
	},
}

M.nvimtree = {
	filters = {
		dotfiles = false,
		custom = { "node_modules" },
	},

	view = {
		adaptive_size = false,
		width = 25,
		hide_root_folder = false,
	},

	git = {
		enable = true,
		ignore = false,
	},

	renderer = {
		highlight_git = true,
		indent_markers = {
			enable = true,
		},
		icons = {
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
			},
		},
	},
}

M.blankline = {
	filetype_exclude = {
		"help",
		"terminal",
		"alpha",
		"packer",
		"lspinfo",
		"TelescopePrompt",
		"TelescopeResults",
		"nvchad_cheatsheet",
		"lsp-installer",
		"norg",
		"",
	},
}

M.mason = {
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- web dev
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		"deno",
		-- "emmet-ls",
		"json-lsp",
		"tailwindcss-language-server",

		-- shell
		"shfmt",
		"shellcheck",
	},
}

M.telescope = {
	extensions_list = { "themes", "terms", "telescope-symbol" },
}

return M
