def init_go():
  # NOTE(yi.sun): This is not the newest version of rules_go. However, we
  # have to stuck with this version as later commits do not allow using local
  # go installation, which becomes a problem in China as downloading 100M
  # go installation packages takes forever.
  native.http_archive(
      name = "io_bazel_rules_go",
      url = "https://github.com/sipt/rules_go/archive/935af460f89e5990d1c4d3a816bf12ab65c173f9.tar.gz",
      strip_prefix = "rules_go-935af460f89e5990d1c4d3a816bf12ab65c173f9",
  )
