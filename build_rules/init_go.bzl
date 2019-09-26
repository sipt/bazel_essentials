load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def init_go():
    # NOTE(yi.sun): This is not the newest version of rules_go. However, we
    # have to stuck with this version as later version removes support for
    # go_prefix, which requires us to rework ALL the repositories.
    http_archive(
        name = "io_bazel_rules_go",
        url = "https://github.com/sipt/rules_go/archive/2fe212b5c3fe53dbc748c7386e72c6072859d84c.tar.gz",
        sha256 = "cde04e651819f4e4012c015d13664d3c8f8e8695d70697265ef8e2470de07d45",
        strip_prefix = "rules_go-2fe212b5c3fe53dbc748c7386e72c6072859d84c",
    )
