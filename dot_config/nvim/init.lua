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
  nnoremap <C-f> :NERDTreeFocus<CR>
  nnoremap <C-n> :NERDTree<CR>
  nnoremap <C-t> :NERDTreeToggle<CR>
]]
vim.opt.shell = "/bin/zsh"
vim.opt.ttyfast = true
vim.opt.clipboard = "unnamedplus"
vim.opt.guifont = "JetBrains Mono NFM"
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

  let g:rainbow_active = 1

  nmap <F8> :TagbarToggle<CR>
]]

require("lualine").setup {
    options = {theme = "gruvbox"}
}

require('nvim-treesitter.configs').setup{
		--auto_install = true,

		--ensure_installed = "maintained", -- ONly use parsers that are amintained
		highlight = { --enable highlighting
				enable = true,
		},
		indent = {
				enable = true,
		}
}
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.g.mapleader = ","

local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
  local opts = {}
  server:setup(opts)
end)


nkeymap('gd', ':lua vim.lsp.buf.definition()<cr>')
nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nkeymap('gi', ':lua vim.lsp.buf.implementation()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
nkeymap('gr', ':lua vim.lsp.buf.references()<cr>')
nkeymap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')
nkeymap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
nkeymap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
nkeymap('<leader>rn', ':lua vim.lsp.buf.rename()<cr>')

