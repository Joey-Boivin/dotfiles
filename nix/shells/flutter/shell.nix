{ pkgs ? import <nixpkgs> { system = "x86_64-linux"; config.allowUnfree = true; users.users.joboi.extraGroups = ["adbusers"];} }:

pkgs.mkShell
{
    nativeBuildInputs = with pkgs; [
        flutter327
        android-tools
        google-chrome
        android-studio
        jdk23
    ];

    shellHook = ''
          export CHROME_EXECUTABLE=${pkgs.google-chrome}/bin/google-chrome-stable
          export JAVA_HOME=${pkgs.android-studio.unwrapped}/jbr
          PATH="${pkgs.jdk23}/bin:$PATH"
        '';
}