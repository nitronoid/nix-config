#!/usr/bin/env zsh

function check_deps() {
    deps=('curl' 'nix')
    for d in $deps; do
        if ! command -v $d >/dev/null 2>&1
        then
            echo "missing $d"
            exit 1
        fi
    done
}

function acquire_source() {
    dest=$1
    mkdir $dest
    pushd $dest
    curl -sL https://github.com/nitronoid/nix-config/archive/refs/heads/master.tar.gz | tar xz
    popd
}

function main() {
    user=$1

    echo "checking dependencies..."
    check_deps

    echo "acquiring flake..."
    acquire_source $bootstrap_dir

    echo "building flake..."
    pushd "${bootstrap_dir}/nix-config-main"

    sudo nix run nix-darwin \
        --extra-experimental-features nix-command \
        --extra-experimental-features flakes \
        -- switch --flake ".#$user"

    echo "complete"
}


set -e

bootstrap_dir="/tmp/nix-bootstrap"
main $@
