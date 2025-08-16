return {
	{
		"AckslD/swenv.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{
				"<leader>vs",
				function()
					require("swenv.api").pick_venv()
				end,
				desc = "[V]env [S]elect",
			},
		},
		config = function()
			require("swenv").setup({
				post_set_venv = function()
					vim.cmd("LspRestart pylsp")
				end,
			})
		end,
	},
}
