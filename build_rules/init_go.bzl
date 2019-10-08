load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def init_go():
    # NOTE(yi.sun): This is not the newest version of rules_go. However, we
    # have to stuck with this version as later version removes support for
    # go_prefix, which requires us to rework ALL the repositories.
    http_archive(
        name = "io_bazel_rules_go",
        url = "https://github.com/sipt/rules_go/archive/91aa0331482425ebcaa982994d4e03087d20bf70.tar.gz",
        sha256 = "0b2f9ffe93f81fadf57b3fec2172159982df222ae9a832ac5502fbbe87f0748d",
        strip_prefix = "rules_go-91aa0331482425ebcaa982994d4e03087d20bf70",
    )
