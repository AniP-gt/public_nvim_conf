return {
  "projekt0n/github-nvim-theme",
  lazy = false,
  priority = 1000,
  enabled = true,
  config = function()
    require("github-theme").setup({
      options = {
        -- Compiled file's destination location
        compile_path = vim.fn.stdpath("cache") .. "/github-theme",
        compile_file_suffix = "_compiled", -- Compiled file suffix
        hide_end_of_buffer = true, -- Hide the '~' character at the end of the buffer for a cleaner look
        hide_nc_statusline = true, -- Override the underline style for non-active statuslines
        transparent = true, -- Enable setting bg (make neovim's background transparent)
        terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
        dim_inactive = false, -- Non focused panes set to alternative background
        module_default = true, -- Default enable value for modules
        styles = { -- Style to be applied to different syntax groups
          comments = "italic", -- Value is any valid attr-list value `:help attr-list`
          functions = "NONE",
          keywords = "NONE",
          variables = "NONE",
          conditionals = "NONE",
          constants = "NONE",
          numbers = "NONE",
          operators = "NONE",
          strings = "NONE",
          types = "NONE",
        },
        inverse = { -- Inverse highlight for different types
          match_paren = false,
          visual = false,
          search = false,
        },
        darken = { -- Darken floating windows and sidebar-like windows
          floats = false,
          sidebars = {
            enable = true,
            list = { "qf", "vista_kind", "packer", "nvim-tree" },
          },
        },
        modules = { -- List of various plugins and additional options
          cmp = true,
          diagnostic = {
            enable = true,
            background = true,
          },
          gitsigns = true,
          native_lsp = {
            enable = true,
            background = true,
          },
          telescope = true,
          treesitter = true,
          whichkey = true,
          nvim_tree = true,
          lsp_trouble = true,
          indent_blankline = true,
        },
      },
      palettes = {},
      specs = {},
      groups = {},
    })
    
    -- Override specific highlights to give sidebars a background
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "github_dark_default",
      callback = function()
        -- Set background for NvimTree
        vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "#0d1117" })
        vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "#0d1117" })
        vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { bg = "#0d1117", fg = "#30363d" })
        vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { bg = "#0d1117", fg = "#30363d" })

        -- Set background for other sidebars
        vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#0d1117" })
        vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "#0d1117" })

        -- Set white terminal colors for lazygit borders
        vim.g.terminal_color_7 = "#FFFFFF"   -- white
        vim.g.terminal_color_15 = "#FFFFFF"  -- bright white
      end,
    })
  end,
}