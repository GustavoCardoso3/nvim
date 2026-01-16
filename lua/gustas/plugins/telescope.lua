return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  module = "telescope",

  config = function()
    require('telescope').setup({
      defaults = {
        preview = {
          treesitter = false,  -- Disable treesitter-based highlighting in preview
        },
      },
    })    
    local builtin = require('telescope.builtin')

    vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})
    vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find files' })
  end
}
