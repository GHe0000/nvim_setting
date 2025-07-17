return {
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- 建议固定版本以避免重大更新带来的问题
    build = ":UpdateRemotePlugins", -- 如果您的插件管理器不自动执行此操作，请取消注释
    dependencies = { "nvim-lua/plenary.nvim" },
    init = function()
      -- 设置输出浮动窗口的最大高度
      vim.g.molten_output_win_max_height = 20
      vim.g.molten_auto_image_popup = 1
    end,
    keys = {
      { "<leader>mi", function() require("molten").init() end, desc = "Molten: Initialize" },
      { "<leader>me", function() require("molten").evaluate_visual() end, mode = "v", desc = "Molten: Evaluate Visual" },
      { "<leader>ml", function() require("molten").evaluate_line() end, desc = "Molten: Evaluate Line" },
      { "<leader>md", function() require("molten").delete_cell() end, desc = "Molten: Delete Cell" },
      { "<leader>mr", function() require("molten").restart_kernel() end, desc = "Molten: Restart Kernel" },
    },
  },
}
