vim.cmd("colorscheme kanagawa")
vim.cmd("syntax on")

-------------------------------------------------------------------------------
-- Options
-------------------------------------------------------------------------------

vim.g.mapleader      = " "                -- Remap leader to spacebar
vim.o.mouse          = ""                -- Enable mouse completely (default), make "" to disable
vim.o.shiftwidth     = 4                  -- Number of spaces tabs count for
vim.o.tabstop        = 4                  -- Always use clipboard for all operations
vim.o.laststatus     = 2                  -- Set the status line to always be visible
vim.o.termguicolors  = true               -- Enable true terminal colors
vim.o.cursorline     = true               -- Highlight current line
vim.o.expandtab      = true               -- Use spaces instead of tabs
vim.o.wrap           = true               -- Enable line wrapping
vim.o.linebreak      = true               -- Break words cleanly at line wrapping
vim.o.autoindent     = true               -- Auto-indent new lines
vim.o.showmatch      = true               -- Highlight matching parentheses. Maybe remove autobracket plugin
vim.o.showcmd        = true               -- Show partial commands in the command line while typing
vim.o.showmode       = false              -- Show the current mode in the command line
vim.o.clipboard      = "unnamedplus"      -- Always use clipboard for all operations
vim.o.completeopt    = "menuone,noselect" -- Set completeopt for better completion experience
vim.o.foldenable     = true               -- Enable folding
vim.o.foldmethod     = 'indent'           -- Set fold method (e.g., 'indent', 'syntax', or 'marker')
vim.o.foldlevel      = 1                  -- Open most folds by default
vim.o.foldlevelstart = 99                 -- Start editing with all folds open

-------------------------------------------------------------------------------
-- Key Mappings
-------------------------------------------------------------------------------

vim.opt.dictionary = "~/.config/nvim/dictionary"
vim.opt.thesaurus  = "~/.config/nvim/thesaurus"

vim.api.nvim_set_keymap('n', '<leader>sh', [[:.!sh<CR>]], {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<C-p>', ':<C-u>FZF<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap(
    'n', '<C-w>',
    ':set number!<CR> | :set relativenumber!<CR>',
    { noremap = true, silent = true, }
)

vim.api.nvim_set_keymap(
    'i', '<Tab>',
    'pumvisible() ? "\\<C-n>" : "\\<C-x>\\<C-o>"',
    { noremap = true, silent = true, expr = true }
)

-------------------------------------------------------------------------------
-- LSP
-------------------------------------------------------------------------------

require('nvim-autopairs').setup({})

local opt = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
local lsp = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- https://github.com/mickael-menu/zk/blob/main/docs/editors-integration.md
require("zk").setup({
    capabilities = capabilities,
})

-- https://clangd.llvm.org/installation#compile_commandsjson
lsp.clangd.setup({
    capabilities = capabilities,
    root_dir = lsp.util.root_pattern('.git', 'compile_commands.json', 'compile_flags.txt', 'bin'),
    cmd = { 'clangd', '--background-index' },
})

-- https://github.com/rust-lang/rust-analyzer
lsp.rust_analyzer.setup {
    capabilities = capabilities,
}

-- https://github.com/golang/tools/tree/master/gopls
lsp.gopls.setup {
    capabilities = capabilities,
    cmd = {"gopls", "serve"},
    filetypes = {"go", "gomod"},
    settings = {
        gopls = {
            analyses = {
                shadow = false,
                unusedparams = true,
                unkeyedliteral = true,
                unusedwrite = true,
                fieldalignment = true,
                nilness = true,
                useany = true,
                unusedvariable = true,
            },
            staticcheck = true,
            usePlaceholders = true,
            completionDocumentation = true,
            matcher = "CaseInsensitive",
            linksInHover = false,
            hoverKind = "NoDocumentation",
        },
    },
}

-- https://github.com/sumneko/lua-language-server
lsp.lua_ls.setup {
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = {'vim'},
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
}

map('n', 'gd',        "<cmd> lua vim.lsp.buf.definition() <cr>",  opt)
map('n', 'gc',        "<cmd> lua vim.lsp.buf.code_action() <cr>",  opt)
map('n', '<Leader>h', "<cmd> lua vim.lsp.buf.hover() <cr>",       opt)
map('n', '<Leader>m', "<cmd> lua vim.lsp.buf.rename() <cr>",      opt)
map('n', '<Leader>r', "<cmd> lua vim.lsp.buf.references() <cr>",  opt)

local cmp = require("cmp")
local luasnip = require 'luasnip'
require('luasnip.loaders.from_vscode').lazy_load()
luasnip.config.setup {}

-------------------------------------------------------------------------------
-- Snippets & Autocompletion
-------------------------------------------------------------------------------

cmp.setup({

    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },

    completion = {
        completeopt = 'menu,menuone,noinsert',
    },

    mapping = {
        ['<Tab>'] = function() end,
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<CR>'] = cmp.mapping.confirm { select = true },
    },

    sources = {
        { name = 'luasnip' },
        { name = 'nvim_lsp' },
    },

    formatting = {
        fields = { "abbr", "menu" },
        format = function(entry, vim_item)
            vim_item.menu = ({
                luasnip = "[Snip]",
                nvim_lsp = "[LSP]",
            })[entry.source.name]
            return vim_item
        end
    },
})

map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})

-------------------------------------------------------------------------------
-- Disable Plugins
-------------------------------------------------------------------------------

vim.g.loaded_2html_plugin      = 1
vim.g.loaded_getscriptPlugin   = 1
vim.g.loaded_gzip              = 1
vim.g.loaded_logiPat           = 1
vim.g.loaded_rrhelper          = 1
vim.g.loaded_spec              = 1
vim.g.loaded_tar               = 1
vim.g.loaded_tarPlugin         = 1
vim.g.loaded_vimball           = 1
vim.g.loaded_vimballPlugin     = 1
vim.g.loaded_zip               = 1
vim.g.loaded_zipPlugin         = 1
vim.g.loaded_netrw             = 1
vim.g.loaded_netrwPlugin       = 1
vim.g.loaded_netrwSettings     = 1
vim.g.loaded_netrwFileHandlers = 1

-------------------------------------------------------------------------------
