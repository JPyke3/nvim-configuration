-- Disable the default Tab mapping
vim.g.copilot_no_tab_map = true

-- Accept Suggestion
vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false })

-- Accept One Word
vim.keymap.set('i', '<C-L>', '<Plug>(copilot-accept-word)')

-- Dismiss Suggestion
vim.keymap.set('i', '<C-D>', '<Plug>(copilot-dismiss)')

-- Cycle to Next Suggestion
vim.keymap.set('i', '<C-N>', '<Plug>(copilot-next)')

-- Cycle to Previous Suggestion
vim.keymap.set('i', '<C-P>', '<Plug>(copilot-previous)')

-- Request a Suggestion
vim.keymap.set('i', '<C-S>', '<Plug>(copilot-suggest)')

-- Accept Next Word
vim.keymap.set('i', '<C-W>', '<Plug>(copilot-accept-word)')

-- Accept Next Line
vim.keymap.set('i', '<C-E>', '<Plug>(copilot-accept-line)')
