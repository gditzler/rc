return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				basedpyright = {},
				rust_analyzer = {},
				lua_ls = {},
				ts_ls = {},
			},
		},
	},
}
