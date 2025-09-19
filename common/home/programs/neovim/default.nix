{
	lib,
	pkgs,
	...
}: {
	programs.neovim = {
		enable = true;
		defaultEditor = true;
		plugins = with pkgs.vimPlugins; [
			catppuccin-nvim
			nvim-lspconfig
			nvim-treesitter.withAllGrammars
			nvim-treesitter-textobjects
			lightline-vim
			mini-nvim
			vim-clang-format
			vim-suda
			vim-localvimrc
		];
		extraPackages = with pkgs; [
			clang-tools
		];
	};
	home.file = {
		".vimrc".source = ./vim_config/.vimrc;
		".config/nvim" = {
			source = ./vim_config/.config/nvim;
			recursive = true;
		};
		".vim" = {
			source = ./vim_config/.vim;
			recursive = true;
		};
	};
}
