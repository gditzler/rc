return {
	{
		"neovim/nvim-lspconfig",
		opts = function()
			vim.lsp.config("julials", {
				cmd = {
					"julia",
					"--startup-file=no",
					"--history-file=no",
					"--depwarn=no",
					"-e",
					[[
            using LanguageServer
            runserver()
          ]],
				},
				filetypes = { "julia" },
				root_markers = { "Project.toml", "JuliaProject.toml", ".git" },
			})
			vim.lsp.enable("julials")
		end,
	},
}
