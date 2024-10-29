-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

require "lazy_setup"
require "polish"

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Insert Mode
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-l>", "<Right>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-k>", "<Up>", opts)
keymap("i", "jk", "<Esc>", opts)

-- vim.cmd [[
--     hi NonText ctermbg=none
--     hi Normal guibg=NONE ctermbg=NONE
-- ]]

vim.cmd [[
    "" hi Cursor guifg=green guibg=green
    "" hi Cursor2 guifg=red guibg=red
    set termguicolors
    highlight Cursor1 guifg=NONE guibg=fg
    " set guicursor=n-v-c:block-Cursor1/lCursor1,i-ci:ver25-Cursor/lCursor,
    set guicursor=a:blinkwait0-blinkon200-blinkoff200-Cursor1
]]
