{
	pkgs,
	lib,
	...
}: {
	programs.tmux = {
		enable = true;

		plugins = with pkgs; [
			tmuxPlugins.nord
		];
	};
}
