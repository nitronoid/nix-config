{
	pkgs,
	lib,
	...
}: {
	programs.kitty = {
		enable = true;
		shellIntegration.enableZshIntegration = true;
		settings = {
			confirm_os_window_close = 0;
			enable_audio_bell = false;
		};
		themeFile = "Catppuccin-Mocha";
	};
	home.packages = with pkgs; [
		kitty
		kitty-themes
	];
}
