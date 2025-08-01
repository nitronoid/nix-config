{pkgs, ...}: {
	imports = [
		modules/gc.nix
		modules/rust-dev.nix
	];

	environment.systemPackages = with pkgs; [
		btop
		htop
		vim
	];

	# Necessary for using flakes on this system.
	nix.settings.experimental-features = "nix-command flakes";
}
