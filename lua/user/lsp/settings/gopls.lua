return {
  settings = {
    cmd_env = {
      GOROOT="/Users/dgiacomo/go/src/github.com/muxinc/mux/bazel-mux/external/go_sdk",
      GOPACKAGESDRIVER="/Users/dgiacomo/go/src/github.com/muxinc/mux/tools/bazel/gopackagesdriver.sh"
    }, 
    gopls = {
      verboseOutput = true,
      directoryFilters = {
          "-bazel-bin",
          "-bazel-out",
          "-bazel-testlogs",
          "-bazel-mux"
      },
        gofumpt = true,
        ["local"] = "github.com/muxinc/mux",
        usePlaceholders = true,
        semanticTokens = true,
        codelenses = {
          gc_details = false,
          regenerate_cgo = false,
          generate = false,
          test =false,
          tidy =false,
          upgrade_dependency = false,
          vendor = false
      },
      analyses = {
        unusedparams = true,
    },
      staticcheck = true,
    },
  },
}
