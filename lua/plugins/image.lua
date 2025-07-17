return {
  '3rd/image.nvim',
  opts = {
    -- 核心配置：设置后端为 'kitty'
    -- WezTerm 兼容 Kitty 的图形协议，所以这里要设置为 'kitty'
    backend = 'kitty',

    -- 推荐的集成配置
    integrations = {
      markdown = {
        enabled = true,
        clear_in_insert_mode = false,
        download_remote_images = true,
        -- ... 其他 markdown 相关设置
      },
      neorg = {
        enabled = true,
        -- ... 其他 neorg 相关设置
      },
      -- 如果你使用 molten-nvim 插件来运行 Jupyter Notebook，这个集成非常有用
      molten = {
        enabled = true,
      },
    },

    -- (可选) 设置最大显示尺寸
    max_width = 100,
    max_height = 24,

    -- kitty 后端的特有设置
    kitty_method = "memory", -- "memory" 或 "temp"
    kitty_clear_method = "all", -- "all" 或 "last"
  },
}
