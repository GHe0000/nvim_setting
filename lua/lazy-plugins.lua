-- NOTE: 插件配置.

require("lazy").setup({
	-- 自动检测文件的 Tab 和缩进大小
	{
		"tpope/vim-sleuth",
		event = { "BufReadPre", "BufNewFile" },
	},

	-- "gc" 注释代码
	{
		"numToStr/Comment.nvim",
		keys = { "gc" },
		opts = {},
	},

	require("plugins.gitsigns"),

	require("plugins.leap"),

	require("plugins.which-key"),

	require("plugins.telescope"),

	require("plugins.lspconfig"),

	require("plugins.conform"),

	require("plugins.cmp"),

	-- 自动输入法切换
	require("plugins.neuims"),

	-- 终端
	require("plugins.toggleterm"),

	-- 配色
	require("plugins.gruvbox"),

	-- 时长统计
	require("plugins.wakatime"),

	-- AI 补全
	require("plugins.fittencode"),

	-- Typst 相关
	require("plugins.typst-preview"),
	-- Lsp 中已经集成相关功能
	-- require("plugins.typst"),

	-- LaTeX 相关
	require("plugins.latex"),

	require("plugins.todo-comments"),

	-- 底部信息栏
	require("plugins.mini"),

	require("plugins.treesitter"),
	require("plugins.debug"),
	require("plugins.autopairs"),
	require("plugins.neo-tree"),

	-- 图像支持
	-- require("plugins.image"),


  -- Jupyter Notebook
  -- require("plugins.jupyter"),
  -- require("plugins.jupytext"),

}, {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
	install = { colorscheme = { "gruvbox" } },
})

-- vim: ts=2 sts=2 sw=2 et
