local map = vim.keymap.set

vim.keymap.set("n", "<leader>uv", function()
  local current = vim.diagnostic.config().virtual_text
  vim.diagnostic.config({ virtual_text = not current })
  vim.notify("Virtual text " .. (not current and "enabled" or "disabled"), vim.log.levels.INFO)
end, { desc = "Toggle diagnostic virtual text" })
