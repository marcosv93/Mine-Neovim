local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

bufferline.setup {
    options = {
        mode = 'tabs',
        separator_style = 'slant',
        always_show_bufferline = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        color_icons = true
    },
    highlights = {
        separator = {
            guifg = '#3c3836',
            guibg = '#fbf1c7'
        },
        separator_selected = {
            guifg = '#3c3836'
        },
        background = {
            guifg = '#7c6f64',
            guibg = '#fbf1c7'
        },
        buffer_selected = {
            guifg = '#282828',
            gui = 'italic'
        },
        fill = {
            guibg = '#fbf1c7'
        }
    }
}

vim.api.nvim_set_keymap('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', {})
