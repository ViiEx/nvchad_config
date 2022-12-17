local M = {}

M.user_terminals = {}

M.toggle_term_cmd = function(term_details)
  -- if a command string is provided, create a basic table for Terminal:new() options
  if type(term_details) == "string" then
    term_details = { cmd = term_details, hidden = true }
  end
  -- use the command as the key for the table
  local term_key = term_details.cmd
  -- set the count in the term details
  if vim.v.count > 0 and term_details.count == nil then
    term_details.count = vim.v.count
    term_key = term_key .. vim.v.count
  end
  -- if terminal doesn't exist yet, create it
  if M.user_terminals[term_key] == nil then
    M.user_terminals[term_key] = require("toggleterm.terminal").Terminal:new(term_details)
  end
  -- toggle the terminal
  M.user_terminals[term_key]:toggle()
end

return M
