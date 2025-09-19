{
	pkgs,
	lib,
	...
}: {
	programs.tmux = {
		enable = true;

		clock24 = true;
		mouse = true;
		terminal = "screen-256color";
		extraConfig = ''
			set -sa terminal-features ",xterm*:Tc"

			# vim-like pane resizing
			bind -r "C-l" resize-pane -U
			bind -r "C-k" resize-pane -D
			bind -r "C-j" resize-pane -L
			bind -r "C-;" resize-pane -R

			# vim-like pane switching
			bind -r "l" select-pane -U
			bind -r "k" select-pane -D
			bind -r "j" select-pane -L
			bind -r ";" select-pane -R
		'';

		plugins = with pkgs; [
			tmuxPlugins.nord
		];
	};
}
