return {
  "ahmedkhalf/project.nvim",
  event = "VimEnter",
  lazy = true,
  config = function()
    require("project_nvim").setup({
      detection_methods = { "pattern", "lsp" },
      patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
    })
  end,
}
