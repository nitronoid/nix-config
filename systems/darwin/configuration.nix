{pkgs, ...}: let
	user = "diverj";
in {
	imports = [
		../../common
	];

	# Used for backwards compatibility, please read the changelog before changing.
	system.stateVersion = 6;

	# The platform the configuration will be used on.
	nixpkgs.hostPlatform = "aarch64-darwin";

	users.users.${user} = {
		name = "${user}";
		home = "/Users/${user}";
		shell = pkgs.zsh;
	};

	security.pam.services.sudo_local = {
		reattach = true;
		touchIdAuth = true;
	};
}
