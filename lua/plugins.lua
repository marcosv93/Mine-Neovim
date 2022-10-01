local status, packer = pcall(require, 'packer')
if (not status) then
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    -- ESSENTIALS
    use 'wbthomason/packer.nvim' -- Package manager.
    use 'ellisonleao/gruvbox.nvim' -- Gruvbox theme.
    use 'hoob3rt/lualine.nvim' -- Status line.
    use 'kyazdani42/nvim-web-devicons' -- Icons.

    -- COMPLETION
    use 'neovim/nvim-lspconfig' -- LSP.
    use 'glepnir/lspsaga.nvim' -- LSP UIs
    use 'onsails/lspkind-nvim' -- vscode-like pictograms.
    use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words.
    use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp for built-in LSP.
    use 'hrsh7th/nvim-cmp' -- Completion.
    use 'L3MON4D3/LuaSnip' -- Snippets.

    -- TREE-SITTER
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- AUTOPAIR & AUTOTAG
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'

    -- TELESCOPE
    use 'nvim-lua/plenary.nvim' -- Common utilities
    use 'nvim-telescope/telescope.nvim' -- Fuzy Finder
    use 'nvim-telescope/telescope-file-browser.nvim' -- File browser

    -- BUFFER TAB
    use 'akinsho/bufferline.nvim'

    -- COLORIZE
    use 'norcalli/nvim-colorizer.lua'

    -- GIT
    use 'lewis6991/gitsigns.nvim' -- Gitsigns
    use 'dinhhuy258/git.nvim' -- For git blame & git browser

    -- Other LSP
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- INDENT
    use "lukas-reineke/indent-blankline.nvim"

    -- MARKDOWN
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
end)
