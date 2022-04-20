return {
  settings = {
    cmd_env = {
      GOPACKAGESDRIVER="./tools/bazel/gopackagesdriver.sh"
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
