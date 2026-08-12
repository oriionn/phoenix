{
    description = "A flake for phoenix, a small tool written in C to retrieve your Linux installation date";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        flake-utils.url = "github:numtide/flake-utils";
    };

    outputs = {self, nixpkgs, flake-utils}: flake-utils.lib.eachDefaultSystem(system:
        let pkgs = nixpkgs.legacyPackages.${system}; in
        {
            packages.default = pkgs.stdenv.mkDerivation {
                pname = "phoenix";
                version = "1.0.0";
                src = ./.;

                nativeBuildInputs = [ pkgs.gnumake pkgs.pkg-config ];

                buildPhase = "make build";
                installPhase = ''
                    mkdir -p $out/bin
                    cp phoenix $out/bin/
                '';
            };
        });
}
