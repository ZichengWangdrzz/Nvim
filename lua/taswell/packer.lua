--  This file can be loaded by calling `lua require('plugins')` from your init.vim

--" Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
    -- or                            , branch = '0.1.x',
    requires = { { "nvim-lua/plenary.nvim" } },
  })
  use({
    "rose-pine/neovim",
    as = "rose-pine",
    config = function()
      vim.cmd("colorscheme rose-pine")
    end,
  })

  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
  use("nvim-treesitter/playground")
  use("theprimeagen/harpoon")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("nvim-lualine/lualine.nvim")
  use({
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons", -- optional
    },
    config = function()
      require("nvim-tree").setup({})
    end,
  })
  -- autocompletion
  use("hrsh7th/nvim-cmp")  -- completion plugin
  use("hrsh7th/cmp-buffer") -- source for text in buffer
  use("hrsh7th/cmp-path")  -- source for file system paths

  -- snippets
  use({
    "L3MON4D3/LuaSnip",
    tag = "v1.*",                    -- <CurrentMajor> by the latest released major (first number of latest release)
  })
  use("saadparwaiz1/cmp_luasnip")    -- for autocompletion
  use("rafamadriz/friendly-snippets") -- useful snippets

  --managing & installing lsp servers
  use({ "williamboman/mason.nvim" })
  use("williamboman/mason-lspconfig.nvim")

  -- configuring lsp servers
  use("neovim/nvim-lspconfig")

  use("hrsh7th/cmp-nvim-lsp")
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  })                                       -- enhanced lsp uis
  use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
  use("onsails/lspkind.nvim")              -- vs-code like icons for autocompletion

  -- formatting & linting
  use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
  use("jayp0521/mason-null-ls.nvim")    -- bridges gap b/w mason & null-ls

  -- auto closing
  use("windwp/nvim-autopairs")
  use("windwp/nvim-ts-autotag")

  -- vim practice
  use("ThePrimeagen/vim-be-good")

  --nvim presence on discord
  use("andweeb/presence.nvim")

  --git signs and git status
  use("lewis6991/gitsigns.nvim")
end)
