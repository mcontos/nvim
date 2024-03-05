return {
  "FabijanZulj/blame.nvim",
  config = function()
    vim.keymap.set('n', "<leader>bl", "<cmd>ToggleBlame window<CR>")
  end
}
