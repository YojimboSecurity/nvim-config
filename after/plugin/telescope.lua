local builtin = require('telescope.builtin')

-- Find files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- File preview
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- Grep 
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({search = vim.fn.input("Grep > ")});
end)
