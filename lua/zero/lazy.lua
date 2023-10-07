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
  require "zero.plugins.lsp-zero",
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- "rebelot/kanagawa.nvim",
  'navarasu/onedark.nvim',
  require 'zero.plugins.telescope',
  require 'zero.plugins.treesetter',
  "tpope/vim-rails",
  require 'zero.plugins.vim-rspec',
  -- 'jiangmiao/auto-pairs',
  -- 'm4xshen/autoclose.nvim',
  'tpope/vim-commentary',
  'tpope/vim-endwise',
  'dense-analysis/ale',
  'tpope/vim-fugitive',
  require("zero.plugins.lualine"),
  'christoomey/vim-tmux-navigator',
  'ThePrimeagen/harpoon',
  'tpope/vim-surround'
})

