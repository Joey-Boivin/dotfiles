{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell
{
    nativeBuildInputs = with pkgs; [
        #go dev tools
	    go 
        gnumake 
        gotools
        delve
        bruno
        golangci-lint
    ];

    hardeningDisable = [ "fortify" ]; #https://github.com/NixOS/nixpkgs/issues/18995

    shellHook = ''
        export GOPATH=$(pwd)/go
        export PATH=$PATH:$GOPATH/bin
        '';
}
