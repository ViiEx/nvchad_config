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
        toggle_term_cmd "ranger"
      end,
      "Open ranger",
    },
  },

  t = { ["<C-x>"] = { termcodes "<C-\\><C-N>", "escape terminal mode" } },

  v = {
    ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
    ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
    ["<C-_>"] = { "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", "toggle comment" },

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
