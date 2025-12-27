return {
  "iamcco/markdown-preview.nvim",
  ft = "markdown",
  build = function()
    local install_path = vim.fn.stdpath("data") .. "/lazy/" .. "markdown-preview.nvim" .. "/app"
    local command = "yarn install --cwd " .. install_path
    print("Running build command: " .. command)
    vim.fn.jobstart(command, {
      on_exit = function(job_id, code, event_type)
        if code ~= 0 then
          print("Error installing markdown-preview.nvim dependencies (exit code: " .. code .. ")")
        else
          print("markdown-preview.nvim dependencies installed successfully")
        end
      end,
    })
  end,
  keys = {
    { "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle Markdown Preview" },
  },
  config = function()
    vim.g.markdown_preview_builtin_browser = 0
    vim.g.markdown_preview_github_style = 1
    vim.g.markdown_preview_theme = "light"
  end,
}