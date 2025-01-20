{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell
{
    nativeBuildInputs = with pkgs; [
        gnumake
        clang-tools
        cmake
        codespell
    ];
}
