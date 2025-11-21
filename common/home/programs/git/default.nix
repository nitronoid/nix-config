{...}: {
	programs.git = {
		enable = true;

		includes = [{
			path = "~/.gitconfig-layer";
		}];

		settings = {
			user.name = "Jack Diver";
			user.email = "jackdiver@hotmail.co.uk";
			color.ui = "true";
			core.autocrlf = "input";
			core.editor = "nvim";
			core.ignorecase = false;
			diff.algorithm = "patience";
			aliases = {
				plog = "log --compact-summary --graph";
			};
		};
	};
}
