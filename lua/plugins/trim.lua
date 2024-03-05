return {
  "cappyzawa/trim.nvim",
  config = function()
    require("trim").setup({
       default_config = {
       ft_blocklist = {},
       patterns = {},
       trim_on_write = true,
       trim_trailing = true,
       trim_last_line = true,
       trim_first_line = true,
       highlight = true,
       highlight_bg = 'red',
     }
    })
  end
}
