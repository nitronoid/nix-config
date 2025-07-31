{...}: {
	programs.git = {
		enable = true;

		userName = "Jack Diver";
		userEmail = "jackdiver@hotmail.co.uk";

		aliases = {
			plog = "log --compact-summary --graph";
		};

		extraConfig = {
			color.ui = "true";
			core.autocrlf = "input";
			core.editor = "nvim";
			core.ignorecase = false;
			diff.algorithm = "patience";
		};
	};
}
