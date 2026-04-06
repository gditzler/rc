-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local out = vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Set leader key before lazy
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("lazy").setup({
	spec = {
		{ "LazyVim/LazyVim", import = "lazyvim.plugins" },
		{ import = "lazyvim.plugins.extras.dap.core" },
		{ import = "plugins" },
	},
	defaults = { lazy = false, version = false },
	checker = { enabled = true },
})
