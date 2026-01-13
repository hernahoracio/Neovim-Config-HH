vim.cmd [[packadd packer.nvim]]



return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  --use('mg979/vim-visual-multi')
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	'rose-pine/neovim',
	as = 'rose-pine',
	config = function()
		vim.cmd('colorscheme rose-pine')
	end
  })

  use {
  'nvim-treesitter/nvim-treesitter',
  run = function()
        require('nvim-treesitter.install').update({ with_sync = true })
    end,
  config = function()
    require'nvim-treesitter'.setup {
      install_dir = vim.fn.stdpath('data') .. '/site',

      ensure_installed = { "help", "c", "lua", "go", "javascript", "typescript", "python" },
      sync_install = false,
      auto_install = true,
      
      highlight = { 
          enable = true,
          additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
    }
  end
}

  use {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	requires = { {"nvim-lua/plenary.nvim"}}
  }
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('nvim-lua/plenary.nvim')
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'


  use 'L3MON4D3/LuaSnip'
  use {
        'brenton-leighton/multiple-cursors.nvim',
        config = function()
            require("multiple-cursors").setup({
            default_keybindings = true,
            updatetime = 150,
            hint = {
                enable = true,
                show_on_start = true,
            }
            })
        end
       }
end)

