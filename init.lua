-- theme
-- vim.cmd.colorscheme 'habamax'
--
--  TIP: Disable arrow keys in normal mode and insert mode
vim.keymap.set({ 'n', 'i' }, '<left>', function() vim.cmd('echo "Use h to move!!"') end)
vim.keymap.set({ 'n', 'i' }, '<right>', function() vim.cmd('echo "Use l to move!!"') end)
vim.keymap.set({ 'n', 'i' }, '<up>', function() vim.cmd('echo "Use k to move!!"') end)
vim.keymap.set({ 'n', 'i' }, '<down>', function() vim.cmd('echo "Use j to move!!"') end)

-- Disabeling mouse 
vim.o.mouse = ""

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5 
vim.opt.wrap = true
-- Indentation
vim.opt.tabstop = 2                                -- Tab width
vim.opt.shiftwidth = 2                             -- Indent width
vim.opt.softtabstop = 2                            -- Soft tab stop
vim.opt.expandtab = true                           -- Use spaces instead of tabs
vim.opt.smartindent = true                         -- Smart auto-indenting
vim.opt.autoindent = true                          -- Copy indent from current line
-- File handling
vim.opt.backup = false                             -- Don't create backup files
vim.opt.writebackup = false                        -- Don't create backup before writing
vim.opt.swapfile = false                           -- Don't create swap files
vim.opt.undofile =  false                          -- Don't create undo files
vim.opt.updatetime = 300                           -- Faster completion
vim.opt.timeoutlen = 500                           -- Key timeout duration
vim.opt.ttimeoutlen = 0                            -- Key code timeout
vim.opt.autoread = true                            -- Auto reload files changed outside vim
vim.opt.autowrite = false                          -- Don't auto save
-- Visual settings
vim.opt.termguicolors = true                       -- Enable 24-bit colors
vim.opt.signcolumn = "yes"                         -- Always show sign column
vim.opt.showmatch = true                           -- Highlight matching brackets
vim.opt.matchtime = 2                              -- How long to show matching bracket
-- Cursor settings
vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
-- Search settings
vim.opt.ignorecase = true                          -- Case insensitive search
vim.opt.smartcase = true                           -- Case sensitive if uppercase in search
vim.opt.hlsearch = false                           -- Don't highlight search results 
vim.opt.incsearch = true                           -- Show matches as you type

-- ColorScheme
vim.g.catppuccin_flavour = "mocha"
-- Enable the theme
vim.cmd('colorscheme gruber-darker')
-- vim.cmd('colorscheme catppuccin-mocha')
-- lsp
-- Load lspconfig
local lspconfig = require('lspconfig')

-- This function is called when a language server attaches to a buffer.
-- It's where you would set up keymaps, autocompletion, etc.
local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr })
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = bufnr })
end

-- Pyright- Python lsp
lspconfig.pyright.setup({
    on_attach = on_attach,
    -- (Optional) Add Pyright-specific settings here.
    -- For example, to tell Pyright where to find your virtual environment.
    settings = {
        python = {
            analysis = {
                venvPath = os.getenv("HOME") .. "/.cache/pypoetry/virtualenvs", -- Example for Poetry
                -- venv = "my-project-venv" -- If you have a named venv
            }
        }
    }
})

-- Ensure diagnostics are enabled
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
})
-- Comment.nvim
require('Comment').setup()
-- LuaLine.vim
require('lualine').setup{
  options = {
    theme = 'gruber_darker'
  }
}
-- Keymaps 
-- Basic keymapping
vim.keymap.set('n', '<leader>e', '<cmd>:Ex<CR>')
vim.keymap.set('n', '<leader>b', '<cmd>:buffers<CR>')
vim.keymap.set('n', '<leader>s', '<cmd>:source<CR>')
-- Keymaps for fzf.vim
vim.keymap.set('n', '<leader>ff', '<cmd>:Files<CR>')
vim.keymap.set('n', '<leader>fb', '<cmd>:Buffers<CR>')
vim.keymap.set('n', '<leader>fh', '<cmd>:History<CR>')
vim.keymap.set('n', '<leader>fg', '<cmd>:Rg<CR>')
vim.keymap.set('n', '<leader>gf', '<cmd>:GFiles<CR>')
vim.keymap.set('n', '<leader>rg', '<cmd>:Rg<CR>')
vim.keymap.set('n', '<leader>rw', '<cmd>:Rg<C-R><C-W><CR>')
