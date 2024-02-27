return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "lua",
        "go",
        "gomod",
        "gosum",
        "json",
        "ruby",
        "toml",
        "rust",
        "java",
        "c",
        "cpp",
        "yaml",
        "hcl",
        "hocon",
        "dockerfile",
        "cmake",
        "make",
        "bash",
        "terraform"
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
