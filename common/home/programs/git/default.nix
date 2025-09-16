{...}: {
	programs.git = {
		enable = true;

		aliases = {
			plog = "log --compact-summary --graph";
		};

		includes = [{
			path = "~/.gitconfig-layer";
		}];

		extraConfig = {
			user.name = "Jack Diver";
			user.email = "jackdiver@hotmail.co.uk";
			color.ui = "true";
			core.autocrlf = "input";
			core.editor = "nvim";
			core.ignorecase = false;
			diff.algorithm = "patience";
		};
	};
}
