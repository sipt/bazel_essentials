def init_go():
  # NOTE(yi.sun): This is not the newest version of rules_go. However, we
  # have to stuck with this version as later commits do not allow using local
  # go installation, which becomes a problem in China as downloading 100M
  # go installation packages takes forever.
  native.http_archive(
      name = "io_bazel_rules_go",
      url = "https://github.com/sipt/rules_go/archive/22f9ee67c50d1f4322227f93947c2d5c01ae579e.tar.gz",
      strip_prefix = "rules_go-22f9ee67c50d1f4322227f93947c2d5c01ae579e",
  )
