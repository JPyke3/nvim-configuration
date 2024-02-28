vim.cmd [[set number]]
vim.cmd [[
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
]]
vim.cmd [[set shiftwidth=4]]
vim.cmd [[set tabstop=4]]
vim.cmd [[:nmap <ScrollWheelUp> <nop>]]
vim.cmd [[:nmap <S-ScrollWheelUp> <nop>]]
vim.cmd [[:nmap <C-ScrollWheelUp> <nop>]]
vim.cmd [[:nmap <ScrollWheelDown> <nop>]]
vim.cmd [[:nmap <S-ScrollWheelDown> <nop>]]
vim.cmd [[:nmap <C-ScrollWheelDown> <nop>]]
vim.cmd [[:nmap <ScrollWheelLeft> <nop>]]
vim.cmd [[:nmap <S-ScrollWheelLeft> <nop>]]
vim.cmd [[:nmap <C-ScrollWheelLeft> <nop>]]
vim.cmd [[:nmap <ScrollWheelRight> <nop>]]
vim.cmd [[:nmap <S-ScrollWheelRight> <nop>]]
vim.cmd [[:nmap <C-ScrollWheelRight> <nop>]]
vim.opt.conceallevel = 2
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true })
vim.api.nvim_set_keymap('n', 'n', 'nzzzv', { noremap = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', { noremap = true })
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
