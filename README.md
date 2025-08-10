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

### (Optional) Managing xcode

Best to use an xcode toolchain on macos, this requires an apple account so is not part of the bootstrap:
```
# This requires an apple login
xcodes install --latest

# Switch system clang to the xcode toolchain
xcodes select

# Verify the switch
clang --version | rg InstalledDir
xcrun --show-sdk-path
```
