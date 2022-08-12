local option = vim.opt

vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
option.encoding = 'utf-8'
option.fileencoding = 'utf-8'

vim.wo.number = true
vim.wo.relativenumber = true

option.title = true
option.autoindent = true
option.hlsearch = true
option.backup = false
option.showcmd = true
option.cmdheight = 1
option.laststatus = 2
option.expandtab = true
option.scrolloff = 10
option.shell = 'bash'
option.inccommand = 'split'
option.ignorecase = true
option.smarttab = true
option.breakindent = true
option.shiftwidth = 4
option.tabstop = 4
option.ai = true -- Auto ident
option.si = true -- Smart ident
option.wrap = false -- No wrap lines
option.backspace = 'start,eol,indent'
option.path:append { '**' } -- Finding files - search down into subfolders
option.wildignore:append { '*/node_modules/*' }


vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])


vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = '*',
    command = "set nopaste"
})

option.formatoptions:append { 'r' }
