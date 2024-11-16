-- [[ Configure and install plugins ]]

-- NOTE: Here is where you install your plugins.
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
	--require("plugins/tokyonight"),
	require("plugins.gruvbox"),

	-- 时长统计
	require("plugins.wakatime"),

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

	-- The following two comments only work if you have downloaded the kickstart repo, not just copy pasted the
	-- init.lua. If you want these files, they are in the repository, so you can just download them and
	-- place them in the correct locations.

	-- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for Kickstart
	--
	--  Here are some example plugins that I've included in the Kickstart repository.
	--  Uncomment any of the lines below to enable them (you will need to restart nvim).
	--
	require("plugins.debug"),
	-- require 'kickstart.plugins.indent_line',
	-- require 'kickstart.plugins.lint',
	require("plugins.autopairs"),
	require("plugins.neo-tree"),

	-- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
	--    This is the easiest way to modularize your config.
	--
	--  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
	--    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
	-- { import = 'custom.plugins' },
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
