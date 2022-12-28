require("custom.autocmds")

local opt = vim.opt

opt.shiftwidth = 4
opt.tabstop = 4

vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""
