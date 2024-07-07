return {
	{
		"lervag/vimtex",
		ft = "tex",
		-- lazy = false, -- we don't want to lazy load VimTeX
		-- tag = "v2.15", -- uncomment to pin to a specific release
		init = function()
			-- VimTeX configuration goes here, e.g.
			vim.g.vimtex_view_general_viewer = "SumatraPDF"
			vim.g.vimtex_syntax_conceal = { math_bounds = 0 }
			vim.g.vimtex_quickfix_mode = 0
			vim.g.vimtex_imaps_enabled = 1
			vim.g.vimtex_imaps_in_vimtex = 1
		end,
	},
	{
		"KeitaNakamura/tex-conceal.vim",
		ft = "tex",
		init = function()
			vim.g.tex_conceal = "abdmg"
		end,
	},
}
