return {
  {
    'luozhiya/fittencode.nvim',
    opts = {},
    event = "VeryLazy",
    config = function()
      require('fittencode').setup({
        use_default_keymaps = false,
        keymaps = {
          inline = {
            ['<A-y>'] = 'accept_all_suggestions',
            ['<A-k>'] = 'accept_line',
            ['<A-l>'] = 'accept_word',
            ['<A-i>'] = 'revoke_line',
            ['<A-j>'] = 'revoke_word',
            ['<A-\\>'] = 'triggering_completion',
          },
          chat = {
            ['q'] = 'close',
            ['[c'] = 'goto_previous_conversation',
            [']c'] = 'goto_next_conversation',
            ['c'] = 'copy_conversation',
            ['C'] = 'copy_all_conversations',
            ['d'] = 'delete_conversation',
            ['D'] = 'delete_all_conversations',
          }
        }
      })
    end,
  }
}
