{pkgs, ...}: {
	imports = [
		modules/gc.nix
		modules/rust-dev.nix
	];

	environment.systemPackages = with pkgs; [
		alejandra
		btop
		git
		git-absorb
		git-revise
		gnumake
		htop
		llvmPackages_20.clangWithLibcAndBasicRtAndLibcxx
		llvmPackages_20.libllvm
		ripgrep
		vim
	];

	# Necessary for using flakes on this system.
	nix.settings.experimental-features = "nix-command flakes";
}
