return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'EdenEast/nightfox.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
    }
    use {
        'ms-jpq/coq_nvim',
        branch = 'coq',
    }
    use {
        'ms-jpq/coq.artifacts', 
        branch = 'artifacts'
    }
    use 'neovim/nvim-lspconfig'
    use 'tpope/vim-commentary'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'ThePrimeagen/harpoon'

    -- Dart
    use 'dart-lang/dart-vim-plugin'
    use 'akinsho/flutter-tools.nvim'

end)
