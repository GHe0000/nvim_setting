-- debug.lua

return {
	-- NOTE: Yes, you can install new plugins here!
	"mfussenegger/nvim-dap",
	-- NOTE: And you can specify dependencies as well
	dependencies = {
		-- Creates a beautiful debugger UI
		"rcarriga/nvim-dap-ui",

		-- Required dependency for nvim-dap-ui
		"nvim-neotest/nvim-nio",

		-- Installs the debug adapters for you
		"williamboman/mason.nvim",
		"jay-babu/mason-nvim-dap.nvim",

		-- Add your own debuggers here
		"leoluz/nvim-dap-go",
		"julianolf/nvim-dap-lldb",
	},
	config = function()
	local dap = require("dap")
	local dapui = require("dapui")

	require("mason-nvim-dap").setup({
		automatic_installation = false,
		-- see mason-nvim-dap README for more information
		handlers = {},
		ensure_installed = {},
	})

	vim.keymap.set("n", "<F5>", dap.continue, { desc = "Debug: Start/Continue" })
	vim.keymap.set("n", "<F1>", dap.step_into, { desc = "Debug: Step Into" })
	vim.keymap.set("n", "<F2>", dap.step_over, { desc = "Debug: Step Over" })
	vim.keymap.set("n", "<F3>", dap.step_out, { desc = "Debug: Step Out" })
	vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "Debug: Toggle Breakpoint" })
	vim.keymap.set("n", "<leader>B", function()
		dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
	end, { desc = "Debug: Set Breakpoint" })

	dapui.setup({
		icons = { expanded = "▾", collapsed = "▸", current_frame = "*" },
		controls = {
			icons = {
				pause = "⏸",
				play = "▶",
				step_into = "⏎",
				step_over = "⏭",
				step_out = "⏮",
				step_back = "b",
				run_last = "▶▶",
				terminate = "⏹",
				disconnect = "⏏",
			},
		},
	})

	-- Toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
	vim.keymap.set("n", "<F7>", dapui.toggle, { desc = "Debug: See last session result." })

	dap.listeners.after.event_initialized["dapui_config"] = dapui.open
	dap.listeners.before.event_terminated["dapui_config"] = dapui.close
	dap.listeners.before.event_exited["dapui_config"] = dapui.close

	-- Install golang specific config
	require("dap-go").setup({
		delve = {
			-- On Windows delve must be run attached or it crashes.
			-- See https://github.com/leoluz/nvim-dap-go/blob/main/README.md#configuring
			detached = vim.fn.has("win32") == 0,
		},
	})
	-- dap.adapters.gdb = {
	-- 	type = "executable",
	-- 	command = "D:\\Software\\msys2\\ucrt64\\bin\\gdb.exe",
	-- 	args = { "--interpreter=dap", "--eval-command", "set print pretty on" }
	-- }
	-- dap.configurations.cpp = {
	--   {
	--     name = "Launch GDB",
	--     type = "gdb",
	--     request = "launch",
	--     program = function()
	-- 		return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "\\", "file")
	--     end,
	--     cwd = "${workspaceFolder}",
	--     stopAtBeginningOfMainSubprogram = true,
	--   },
	-- }
	-- require("dap-lldb").setup({
	-- 	configurations = {
	-- 		-- C lang configurations
	-- 		cpp = {
	-- 				{
	-- 					name = "Launch debugger",
	-- 					type = "lldb",
	-- 					request = "launch",
	-- 					cwd = "${workspaceFolder}",
	-- 					program = function()
	-- 						-- Build with debug symbols
	-- 						local out = vim.fn.system({ "make", "debug" })
	-- 						-- Check for errors
	-- 						if vim.v.shell_error ~= 0 then
	-- 							vim.notify(out, vim.log.levels.ERROR)
	-- 							return nil
	-- 						end
	-- 						-- Return path to the debuggable program
	-- 						return "path/to/executable"
	-- 					end,
	-- 			},
	-- 		},
	-- 	},
	--})
	end,
}
