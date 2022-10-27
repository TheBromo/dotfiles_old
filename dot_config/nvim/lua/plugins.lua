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
        --
        use "windwp/nvim-autopairs"
        use "preservim/vimux"
        use "easymotion/vim-easymotion"
        use "nvim-treesitter/nvim-treesitter"
        use "luochen1990/rainbow"
    end
)
