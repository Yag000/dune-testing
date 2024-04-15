FROM ocaml/opam:latest

MAINTAINER Yago Iglesias <yago.iglesias-vazquez@etu.u-paris.fr>

# Install dune
RUN opam install dune

# Install clang-format
RUN opam install alcotest qcheck qcheck-alcotest ppx_expect ocamlformat
