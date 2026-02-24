return {
  -- Colorscheme (Claude theme - defined in colors/claude.lua)
  {
    dir = vim.fn.stdpath("config"),
    name = "claude-theme",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("claude")
    end,
  },

  -- File explorer
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file tree" },
    },
    opts = {},
  },

  -- Fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
    },
    opts = {},
  },

  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        theme = {
          normal = {
            a = { fg = "#1A1612", bg = "#D97757", gui = "bold" },
            b = { fg = "#DDD5C8", bg = "#2D2824" },
            c = { fg = "#B5ADA1", bg = "#231F1B" },
          },
          insert = {
            a = { fg = "#1A1612", bg = "#8EAB6E", gui = "bold" },
          },
          visual = {
            a = { fg = "#1A1612", bg = "#B39FD0", gui = "bold" },
          },
          replace = {
            a = { fg = "#1A1612", bg = "#D0838A", gui = "bold" },
          },
          command = {
            a = { fg = "#1A1612", bg = "#DEB974", gui = "bold" },
          },
          inactive = {
            a = { fg = "#8A8278", bg = "#231F1B" },
            b = { fg = "#8A8278", bg = "#231F1B" },
            c = { fg = "#635B52", bg = "#1A1612" },
          },
        },
      },
    },
  },

  -- Git signs
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
  },

  -- Autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },

  -- Comment toggling
  {
    "numToStr/Comment.nvim",
    keys = {
      { "gcc", mode = "n" },
      { "gc", mode = "v" },
    },
    opts = {},
  },

  -- Which-key (shows keybinding hints)
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
  },
}
