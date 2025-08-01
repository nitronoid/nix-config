{
	lib,
	pkgs,
	...
}: {
	programs.zsh = {
		enable = true;
		autocd = true;
		enableCompletion = true;
		autosuggestion.enable = true;
		syntaxHighlighting.enable = true;
		history.size = 50000;
		localVariables.ZVM_INIT_MODE = "sourcing";
		plugins = [
			{
				name = "zsh-vi-mode";
				file = "zsh-vi-mode.plugin.zsh";
				src =
					fetchGit {
						url = "https://github.com/jeffreytse/zsh-vi-mode";
						rev = "ea1f58ab9b1f3eac50e2cde3e3bc612049ef683b";
					};
			}
		];
		initContent = lib.fileContents ./vi.zsh;
	};
}
