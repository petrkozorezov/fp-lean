{ pkgs, ... }: {
  packages = with pkgs; [
    (lean4.overrideAttrs (prev: {
      version = "4.1.0";
      src = prev.src.override {
        hash = "sha256-6qbCafG0bL5KxQt2gL6hV4PFDsEMM0UXfldeOOqxsaE=";
      };
    }))
    mdbook
    pandoc
    texliveSmall
    python3
    expect
  ];
}
