local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  -- theme
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- "rebelot/kanagawa.nvim",
  'navarasu/onedark.nvim',
  -- general
  require "zero.plugins.lsp-zero",
  require 'zero.plugins.telescope',
  require 'zero.plugins.treesetter',
  require("zero.plugins.lualine"),
  'dense-analysis/ale',
  'windwp/nvim-ts-autotag',
  "tpope/vim-rails",
  -- rails and ruby specific
  require 'zero.plugins.vim-rspec',
  -- utility
  'tpope/vim-endwise',
  'tpope/vim-commentary',
  'tpope/vim-fugitive',
  'christoomey/vim-tmux-navigator',
  'ThePrimeagen/harpoon',
  'tpope/vim-surround',
  require "zero.plugins.indent-blankline",
  require "zero.plugins.ufo",
  require "zero.plugins.treesj"
  -- 'jiangmiao/auto-pairs',
  -- 'm4xshen/autoclose.nvim',
})

