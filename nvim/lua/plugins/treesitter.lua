return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      local parsers = {
        "lua", "python", "rust", "javascript", "typescript",
        "html", "css", "json", "yaml", "markdown", "bash",
      }

      -- Install parsers if missing
      for _, parser in ipairs(parsers) do
        local ok, _ = pcall(vim.treesitter.language.inspect, parser)
        if not ok then
          vim.cmd("TSInstall " .. parser)
        end
      end

      -- Enable treesitter highlighting for all buffers
      vim.api.nvim_create_autocmd("FileType", {
        callback = function()
          pcall(vim.treesitter.start)
        end,
      })
    end,
  },
}