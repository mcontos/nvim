return {
  {
    "eandrju/cellular-automaton.nvim",
    name = "cellular-automaton",
    config = function()
      vim.keymap.set('n', "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")
    end
  }
}
