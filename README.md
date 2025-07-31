### Bootstrap with nix-darwin

Prerequisites
* `curl`

```
# Get the config
bootstrap=~/nix-bootstrap
mkdir -p $bootstrap && cd $bootstrap
curl -sL https://github.com/nitronoid/nix-config/archive/refs/heads/master.tar.gz | tar xz
cd nix-config-main

# Install nix
curl -L https://nixos.org/nix/install | sh

# Build nix-darwin and the flake
sudo nix run nix-darwin --extra-experimental-features nix-command --extra-experimental-features flakes -- switch --flake .#diverj
```

### Iterating

After the initial bootstrap, the config can be modified and rebuilt via `darwin-rebuild`:
```
sudo darwin-rebuild switch --flake .#diverj
```
