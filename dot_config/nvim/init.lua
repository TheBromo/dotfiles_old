require("plugins")

vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.mouse = "v" --middle mouse click paste
vim.opt.mouse = "a" --enable mouse click
vim.opt.hlsearch = true --hilight search
vim.opt.incsearch = true -- incremental search
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true --indent newline the same amount as previous
vim.opt.number = true --linenumber
vim.opt.wildmode = "longest,list"
vim.cmd [[
  syntax enable
  set nocompatible
]]
vim.opt.shell = "/bin/zsh"
vim.opt.ttyfast = true
vim.opt.clipboard = "unnamedplus"
--vim.opt.guifont = "Iosevka Nerd Font Mono"
vim.opt.ruler = true
vim.opt.visualbell = true
vim.opt.encoding = "utf-8"
vim.opt.termguicolors = true
vim.opt.autoread = true
vim.opt.updatetime = 100
vim.opt.autoindent = true
vim.opt.smartindent = true
--vim.opt.nobackup = true
--vim.opt.nowritebackup = true
--
vim.cmd [[
  let g:gruvbox_contrast_dark='medium'
  let g:gruvbox_contrast_light='hard'
  colorscheme gruvbox
  hi LspCxxHlGroupMemberVariable guifg=#83a598
]]

require("lualine").setup {
    options = {theme = "gruvbox"}
}
