{pkgs, ...}: {
	imports = [
		programs/git
		programs/kitty
		programs/neovim
		programs/tmux.nix
		programs/zsh
	];

	programs = {
		bat = {
			enable = true;
			config.theme = "catppuccin-mocha";
			themes = {
				catppuccin-mocha = {
					src =
						pkgs.fetchFromGitHub {
							owner = "catppuccin";
							repo = "bat";
							rev = "6810349b28055dce54076712fc05fc68da4b8ec0";
							hash = "sha256-lJapSgRVENTrbmpVyn+UQabC9fpV1G1e+CdlJ090uvg=";
						};
					file = "themes/Catppuccin Mocha.tmTheme";
				};
			};
		};
		direnv = {
			enable = true;
			enableZshIntegration = true;
			nix-direnv.enable = true;
		};
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
			alejandra
			git-absorb
			git-revise
			gemini-cli
			gnumake
			imagemagick
			mosh
			nix-direnv
			nurl
			ripgrep
			xcodes
			haskellPackages.sv2v
			iverilog
			uv
			picocom
		];
		stateVersion = "25.05";
	};
}
