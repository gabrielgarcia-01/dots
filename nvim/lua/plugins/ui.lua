return {
  -- mini animate
  {
    "echasnovski/mini.animate",
    opts = {
      scroll = {
        timing = require("mini.animate").gen_timing.linear({ duration = 100, unit = "total" }),
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    -- opts = {
    --    transparent = true,
    --    styles = {
    --      sidebars = "transparent",
    --      floats = "transparent",
    --    },
    --  },
  },
  {
    "catppuccin/nvim",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-storm",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(plugin)
      local icons = require("lazyvim.config").icons

      local function fg(name)
        return function()
          ---@type {foreground?:number}?
          local hl = vim.api.nvim_get_hl_by_name(name, true)
          return hl and hl.foreground and { fg = string.format("#%06x", hl.foreground) }
        end
      end

      return {
        options = {
          theme = "auto",
          globalstatus = true,
          disabled_filetypes = { statusline = { "dashboard", "lazy", "alpha" } },
          component_separators = "|",
          section_separators = { left = "", right = "" },
        },
        sections = {
          lualine_a = {
            { "mode", separator = { left = "" }, right_padding = 2 },
          },
          lualine_b = { "filename", "branch" },
          lualine_c = {
            {
              "diagnostics",
              symbols = {
                error = icons.diagnostics.Error,
                warn = icons.diagnostics.Warn,
                info = icons.diagnostics.Info,
                hint = icons.diagnostics.Hint,
              },
            },
            { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
            -- { "filename", path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" } },
            -- stylua: ignore
            -- {
            --   function() return require("nvim-navic").get_location() end,
            --   cond = function() return package.loaded["nvim-navic"] and require("nvim-navic").is_available() end,
            -- },
          },
          lualine_x = {
          -- stylua: ignore
          {
            function() return require("noice").api.status.command.get() end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
            color = fg("Statement")
          },
          -- stylua: ignore
          {
            function() return require("noice").api.status.mode.get() end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.mode.has() end,
            color = fg("Constant") ,
          },
            { require("lazy.status").updates, cond = require("lazy.status").has_updates, color = fg("Special") },
            -- {
            --   "diff",
            --   symbols = {
            --     added = icons.git.added,
            --     modified = icons.git.modified,
            --     removed = icons.git.removed,
            --   },
            -- },
          },
          lualine_y = {
            { "progress", separator = " ", padding = { left = 1, right = 0 } },
            { "location", padding = { left = 0, right = 1 } },
          },
          lualine_z = {
            {
              function()
                return " " .. os.date("%R")
              end,
              separator = { right = "" },
              left_padding = 2,
            },
          },
        },
        extensions = { "neo-tree" },
      }
    end,
  },
  -- alpha-nvim
  {
    "goolord/alpha-nvim",
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[
                            _         
     ____  ___  ____ _   __(_____ ___ 
    / __ \/ _ \/ __ | | / / / __ `__ \
   / / / /  __/ /_/ | |/ / / / / / / /
  /_/ /_/\___/\____/|___/_/_/ /_/ /_/ 
      ]]

      dashboard.section.header.val = vim.split(logo, "\n")
      dashboard.section.buttons.val = {
        dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
        dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
        dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
        dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
        dashboard.button("s", " " .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
        dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
        dashboard.button("q", " " .. " Quit", ":qa<CR>"),
      }
      for _, button in ipairs(dashboard.section.buttons.val) do
        button.opts.hl = "AlphaButtons"
        button.opts.hl_shortcut = "AlphaShortcut"
      end
      dashboard.section.footer.opts.hl = "Type"
      dashboard.section.header.opts.hl = "AlphaHeader"
      dashboard.section.buttons.opts.hl = "AlphaButtons"
      dashboard.opts.layout[1].val = 8
      return dashboard
    end,
  },
  -- Terminal
  {
    "NvChad/nvim-colorizer.lua",
    opts = {},
  },
  -- Zen Mode
  {
    "folke/zen-mode.nvim",
    opts = {},
  },
  -- Twilight
  {
    "folke/twilight.nvim",
    opts = {},
  },
  {
    "rcarriga/nvim-notify",
    keys = {
      {
        "<leader>un",
        function()
          require("notify").dismiss({ silent = true, pending = true })
        end,
        desc = "Delete all Notifications",
      },
    },
    opts = {
      timeout = 3000,
      background_colour = "#000000",
      max_height = function()
        return math.floor(vim.o.lines * 0.75)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.75)
      end,
    },
    init = function()
      -- when noice is not enabled, install notify on VeryLazy
      local Util = require("lazyvim.util")
      if not Util.has("noice.nvim") then
        Util.on_very_lazy(function()
          vim.notify = require("notify")
        end)
      end
    end,
  },
  {
    "andweeb/presence.nvim",
    opts = {
      auto_update = true,
      client_id = "1063120969985691698",
      blacklist = {}, -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
      git_commit_text = "Committing changes", -- Format string rendered when commiting changes in git
      plugin_manager_text = "Managing plugins", -- Format string rendered when managing plugins
      reading_text = "Reading %s", -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer
      workspace_text = "Working on %s", -- Workspace format string (either string or function(git_project_name: string|nil, buffer: string): string)
      line_number_text = "Line %s out of %s", -- Line number format string (for when enable_line_number is set to true)
      main_image = "neovim", -- Main image display (either "neovim" or "file")
      neovim_image_text = "The One True Text Editor", -- Text displayed when hovered over the Neovim image
      image_text = "Made with love <3", -- Text displayed when hovered over the file or workspace image
      log_level = nil, -- Log messages at or above this level
      debounce_timeout = 10, -- Number of seconds to debounce events
      enable_line_number = true, -- Displays the current line number instead of the current project
      buttons = true, -- Configure Rich Presence button(s)
      editing_text = "Editing %s", -- Format string rendered when an editable file is loaded in the buffer
      file_explorer_text = "Browsing %s", -- Format string rendered when browsing a file explorer
    },
  },
}
