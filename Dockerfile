FROM ocaml/opam:latest

LABEL org.opencontainers.image.authors="Yago Iglesias <me@yagoiglesias.fr>"

# Install dune

RUN opam init --yes && eval $(opam env)

RUN opam update --yes

RUN opam upgrade --yes

# Install dependencies
RUN opam install alcotest dune qcheck qcheck-alcotest ppx_expect ocamlformat dune-site pprint sexplib menhir sedlex ppx_sexp_conv yojson pure-html domainslib re patdiff ppx_yojson_conv odoc ppx_deriving

