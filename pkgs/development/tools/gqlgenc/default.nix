{ buildGoModule, fetchFromGitHub, lib }:

buildGoModule rec {
  pname = "gqlgenc";
  version = "0.23.2";

  src = fetchFromGitHub {
    owner = "yamashou";
    repo = "gqlgenc";
    rev = "v${version}";
    sha256 = "sha256-a+/X2q9Rii/8odXGICNOB7uWXd6vfqquP+wGvT/tRUo=";
  };

  excludedPackages = [ "example" ];

  vendorHash = "sha256-lQ2KQF+55qvscnYfm1jLK/4DdwFBaRZmv9oa/BUSoXI=";

  meta = with lib; {
    description = "Go tool for building GraphQL client with gqlgen";
    mainProgram = "gqlgenc";
    homepage = "https://github.com/Yamashou/gqlgenc";
    license = licenses.mit;
    maintainers = with maintainers; [ milran ];
  };
}
