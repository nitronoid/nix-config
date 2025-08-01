{
	description = "diverj systems flake";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
		nix-darwin.url = "github:nix-darwin/nix-darwin/master";
		nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
		home-manager.url = "github:nix-community/home-manager";
		home-manager.inputs.nixpkgs.follows = "nixpkgs";
		rust-overlay.url = "github:oxalica/rust-overlay";
		rust-overlay.inputs.nixpkgs.follows = "nixpkgs";
	};

	outputs = inputs @ {
		nix-darwin,
		home-manager,
		...
	}: {
		darwinConfigurations.diverj =
			nix-darwin.lib.darwinSystem {
				specialArgs = inputs;
				modules = [
					systems/darwin/configuration.nix
					home-manager.darwinModules.home-manager
					{
						home-manager.useGlobalPkgs = true;
						home-manager.useUserPackages = true;
						home-manager.backupFileExtension = "backup";
						home-manager.users.diverj = import systems/darwin/home/home.nix;
					}
				];
			};
	};
}
