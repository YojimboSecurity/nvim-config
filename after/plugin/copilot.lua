-- Description: Copilot configuration
-- Author: David Johnson
-- Enable/Disable Copilot for specific filetypes
vim.g.copilot_filetypes = { xml = false }
-- Highlight Copilot matches
vim.cmd[[highlight CopilotMatch cterm=bold ctermfg=blue gui=bold guifg=blue]]

