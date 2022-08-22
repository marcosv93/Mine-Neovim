local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

bufferline.setup {
    options = {
        mode = 'tabs',
        always_show_bufferline = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        color_icons = true
    },
    highlights = {
        separator = {
            fg = '#3c3836',
            bg = '#d5c4a1'
        },
        separator_selected = {
            fg = '#3c3836',
            bg = '#d5c4a1'
        },
        background = {
            fg = '#7c6f64',
            bg = '#d5c4a1'
        },
        buffer_selected = {
            fg = '#282828',
            bg = '#fbf1c7',
            bold = true
        },
        fill = {
            bg = '#ebdbb2'
        }
    }
}

vim.api.nvim_set_keymap('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', {})
