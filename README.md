### Bootstrap with nix-darwin

Prerequisites
* `curl`

```
# Install nix
curl -fsSL https://install.determinate.systems/nix | sh -s -- install

# Restart the shell

# Run the bootstrap script
curl -fsSL https://raw.githubusercontent.com/nitronoid/nix-config/refs/heads/main/darwin-bootstrap.zsh | zsh -s -- diverj
```

### Iterating

After the initial bootstrap, the config can be modified and rebuilt via `darwin-rebuild`:
```
sudo darwin-rebuild switch --flake .#diverj
```
