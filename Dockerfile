FROM ocaml/opam:latest

MAINTAINER Yago Iglesias <yago.iglesias-vazquez@etu.u-paris.fr>

# Install dune
RUN opam install dune

# Install dependencies
RUN opam install alcotest qcheck qcheck-alcotest ppx_expect ocamlformat dune-site pprint sexplib menhir sedlex ppx_sexp_conv yojson pure-html domainslib re patdiff ppx_yojson_conv odoc
