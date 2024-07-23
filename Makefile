APP_NAME := nvim
PKG_PATH := $(XDG_DATA_HOME)/$(APP_NAME)/site/pack/_/start

install:
	git clone https://github.com/sainnhe/everforest.git ${PKG_PATH}/everforest
	git clone https://github.com/rose-pine/neovim.git ${PKG_PATH}/neovim
	git clone https://github.com/slugbyte/lackluster.nvim.git ${PKG_PATH}/lackluster.nvim
	git clone https://github.com/folke/zen-mode.nvim.git ${PKG_PATH}/zen-mode.nvim
	git clone https://github.com/mickael-menu/zk-nvim.git ${PKG_PATH}/zk-nvim
	git clone https://github.com/windwp/nvim-autopairs.git ${PKG_PATH}/nvim-autopairs
	git clone https://github.com/neovim/nvim-lspconfig.git ${PKG_PATH}/nvim-lspconfig
	git clone https://github.com/ledger/vim-ledger.git ${PKG_PATH}/vim-ledger
	git clone https://github.com/hrsh7th/nvim-cmp.git ${PKG_PATH}/nvim-cmp
	git clone https://github.com/L3MON4D3/LuaSnip.git ${PKG_PATH}/LuaSnip
	git clone https://github.com/saadparwaiz1/cmp_luasnip.git ${PKG_PATH}/cmp_luasnip
	git clone https://github.com/hrsh7th/cmp-nvim-lsp.git ${PKG_PATH}/cmp-nvim-lsp
	git clone https://github.com/hrsh7th/cmp-path.git ${PKG_PATH}/cmp-path
	git clone https://github.com/rafamadriz/friendly-snippets.git ${PKG_PATH}/friendly-snippets
	git clone https://github.com/diegoulloao/neofusion.nvim.git ${PKG_PATH}/neofusion.nvim
	git clone https://github.com/nvim-lua/plenary.nvim.git ${PKG_PATH}/plenary.nvim
	git clone https://github.com/nvim-telescope/telescope.nvim.git ${PKG_PATH}/telescope.nvim

clean:
	rm -rf "$(XDG_DATA_HOME)/$(APP_NAME)"
