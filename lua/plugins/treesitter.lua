return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "query",
        "ruby",
        "html",
        "vue",
        "embedded_template",
        "css",
        "javascript",
        "typescript",
        "swift",
        "json",
        "yaml",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
    })

    vim.filetype.add({
      extension = {
        erb = "eruby",
      },
    })
  end,
}
