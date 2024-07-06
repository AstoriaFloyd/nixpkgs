{ 
  autoconf, automake, gnumake, alsa-lib, libtool, gcc
}:

mkDerivation rec {

  # name of our derivation
  name = "awesfx";
  buildInputs = with pkgs; [
    autoconf
    automake
    gnumake
    alsa-lib
    libtool
    gcc
  ];

    src = fetchGit {
    url = "https://github.com/tiwai/awesfx.git";
    ref = "refs/heads/master";
    rev = "0581458acc5f28ef50742805cf37278d979b1c12";
  };

  buildPhase = ''
    autoreconf -i
    mkdir $out
    ./configure --prefix=$out
    make
    '';
}
