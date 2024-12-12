-- Enable line numbers
vim.opt.number = true

-- Highlight search
vim.opt.hlsearch = true

-- Case insensitive searching
vim.opt.ignorecase = true

-- Enable syntax highlighting
vim.cmd('syntax on')

-- Set tab-related options
vim.opt.tabstop = 4          -- Number of columns a tab counts for
vim.opt.softtabstop = 4      -- Treat multiple spaces as a tab
vim.opt.expandtab = true     -- Convert tabs to spaces
vim.opt.shiftwidth = 4       -- Indentation width

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato", -- Choose "latte", "frappe", "macchiato", or "mocha"
        integrations = {
          nvimtree = true,
          treesitter = true,
        },
      })
      vim.cmd([[colorscheme catppuccin]])
    end,
  },
})

