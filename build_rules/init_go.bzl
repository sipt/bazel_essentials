load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def init_go():
    # NOTE(yi.sun): This is not the newest version of rules_go. However, we
    # have to stuck with this version as later version removes support for
    # go_prefix, which requires us to rework ALL the repositories.
    http_archive(
        name = "io_bazel_rules_go",
        url = "https://github.com/sipt/rules_go/archive/f75bf4ca561cbe169f3f4568a0c5195d98427c1d.tar.gz",
        sha256 = "b0b39caf6b3998138df3ec79ddf92273f6f8c60ccf65e964b957e29ccbd82660",
        strip_prefix = "rules_go-f75bf4ca561cbe169f3f4568a0c5195d98427c1d",
    )
