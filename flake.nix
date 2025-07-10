{
    description = "hledger_site development flake";
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    };

    outputs = { self, nixpkgs, }:
    let
        pkgs = nixpkgs.legacyPackages."x86_64-linux";
    in
    {
        devShells."x86_64-linux".default = with pkgs; mkShell {
            packages = with pkgs; [
                mdbook
                mdbook-toc
            ];
        };
    };
}
