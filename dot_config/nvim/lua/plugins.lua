return require("packer").startup(
    function(use)
        -- Packer can manage itself
        use "wbthomason/packer.nvim"
        -- Gruvbox Theme
        use "morhetz/gruvbox"
        -- Zsh like Dash
        use "kyazdani42/nvim-web-devicons"
        use {
            "nvim-lualine/lualine.nvim",
            requires = {"kyazdani42/nvim-web-devicons", opt = true}
        }
        -- Formatting for a lot of fie
        use "sbdchd/neoformat"
        -- File Explorer
        use "preservim/nerdtree"
        -- Forgor
        use "windwp/nvim-autopairs"
        -- Tmux Optimization
        use "preservim/vimux"
        --Investigate best usage
        use "easymotion/vim-easymotion"
        --better Syntax hilighting
        use {
            "nvim-treesitter/nvim-treesitter",
            run = function()
                require("nvim-treesitter.install").update({with_sync = true})
            end
        }
        use "luochen1990/rainbow"

        --LSP Config and Autocomplete
        use {
            "williamboman/nvim-lsp-installer",
            "neovim/nvim-lspconfig"
        }
        use "hrsh7th/cmp-nvim-lsp"
        use "hrsh7th/cmp-buffer"
        use "hrsh7th/cmp-path"
        use "hrsh7th/cmp-cmdline"
        use "hrsh7th/nvim-cmp"
        --For vsnip users.
        use "hrsh7th/cmp-vsnip"
        use "hrsh7th/vim-vsnip"
    end
)
