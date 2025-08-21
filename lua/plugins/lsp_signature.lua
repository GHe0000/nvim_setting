return {
	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		opts = {
			bind = true, -- 自动绑定默认触发方式
			handler_opts = {
				border = "rounded", -- 边框样式
			},
		},
		config = function(_, opts)
			require("lsp_signature").setup(opts)
		end,
	},
}
