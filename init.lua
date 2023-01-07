require("config")

vim.g.mapleader = " "
vim.o.relativenumber = true
vim.cmd("filetype plugin indent on")

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.autoindent = true

vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true

vim.o.wildmode = "longest,list,full"
vim.o.wildmenu = true

vim.o.ruler = true
vim.o.laststatus = 2
vim.o.showcmd = true
vim.o.showmode = true

vim.o.wrap = true
vim.o.breakindent = true

vim.o.encoding = "utf-8"

vim.o.textwidth = 0

vim.o.hidden = true

vim.o.number = true

vim.o.title = true
vim.o.scrolloff = 10


vim.cmd([[
  autocmd InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync
]])

vim.g.clang_format_style = [[
]]
vim.cmd([[
let g:clang_format#style_options = {
    \ "BasedOnStyle": "Google",
    \ "IndentWidth": 4,
    \ "TabWidth": 4,
    \ "FixNamespaceComments": "true",
    \ "AllowShortIfStatementsOnASingleLine": "false",
    \ "AllowShortFunctionsOnASingleLine": "false",
    \ "Standard" : "C++11"} 
]])

vim.cmd([[
  autocmd InsertLeave *.c,*.cpp ClangFormat
]])

