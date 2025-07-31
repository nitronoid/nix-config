{pkgs, ...}: {
	imports = [
		programs/git
		programs/kitty
		programs/neovim
		programs/tmux.nix
		programs/zsh
	];

	programs = {
		bat.enable = true;
		eza = {
			enable = true;
			enableZshIntegration = true;
		};
		fd.enable = true;
		fzf = {
			enable = true;
			enableZshIntegration = true;
		};
		starship.enable = true;
		# let home-manager install and manage itself
		home-manager.enable = true;
	};

	home = {
		packages = with pkgs; [
			starship
		];
		stateVersion = "25.05";
	};
}
