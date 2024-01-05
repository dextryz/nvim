APP_NAME := nvim
PKG_PATH := $(XDG_DATA_HOME)/$(APP_NAME)/site/pack/_/start

install:
	git clone https://github.com/mickael-menu/zk-nvim.git ${PKG_PATH}/zk-nvim
	git clone https://github.com/windwp/nvim-autopairs.git ${PKG_PATH}/nvim-autopairs
	git clone https://github.com/neovim/nvim-lspconfig.git ${PKG_PATH}/nvim-lspconfig
	git clone https://github.com/ledger/vim-ledger.git ${PKG_PATH}/vim-ledger

clean:
	rm -rf "$(XDG_DATA_HOME)/$(APP_NAME)"
