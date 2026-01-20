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
        require'nvim-treesitter'.install { 'go', 'javascript', 'typescript', 'tsx', 'lua', 'python', 'zig' }
    end,
  config = function()
    require'nvim-treesitter'.setup {
      install_dir = vim.fn.stdpath('data') .. '/site',
      sync_install = false,
      auto_install = true,
      
      highlight = { 
          enable = true,
          additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
    }

    vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
        pattern = { "*.go", "*.ts", "*.tsx", "*.js", "*.jsx", "*.lua" },
        callback = function()
        pcall(vim.treesitter.start)
  end,
})
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

  --avante setup
  use 'MunifTanjim/nui.nvim'
  use 'MeanderingProgrammer/render-markdown.nvim'
  use 'nvim-tree/nvim-web-devicons' -- or use 'echasnovski/mini.icons'
  use 'HakonHarnes/img-clip.nvim'
  use 'zbirenbaum/copilot.lua'
  use 'stevearc/dressing.nvim' -- for enhanced input UI
  use 'folke/snacks.nvim' -- for modern input UI

  -- Avante.nvim with build process
  use {
    'yetone/avante.nvim',
    branch = 'main',
    run = 'make',
  }



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

