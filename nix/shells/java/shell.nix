{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell
{
    nativeBuildInputs = with pkgs; [
        maven
        jetbrains.idea-ultimate
        jdk21
    ];

    shellHook = ''
          export JAVA_HOME=${pkgs.jdk21}
          export MAVEN_HOME=${pkgs.maven}
          PATH="${pkgs.jdk21}/bin:$PATH"
        '';
}
