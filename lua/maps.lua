local keymap = vim.keymap
local options = {
    silent = true
}


-- Do not yank with "x".
keymap.set('n', 'x', '"_x')

-- Increment/Decrement numbers
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', options)

-- New window
keymap.set('n', 'ss', ':split<Return><C-w>w', options)
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', options)

-- Move window
keymap.set('n', '<Space>', '<C-w>w')

keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Enable no highlight search
keymap.set('n', '<Space>n', ':nohlsearch<Return>', options)

-- Markdown previewer
keymap.set('n', '<Space>mt', ':MarkdownPreviewToggle<Return>', options)
