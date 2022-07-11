local status_ok, nt = pcall(require, "neotest")
if not status_ok then
  return
end

nt.setup({
  adapters = {
    require("neotest-python")({
      output = {
        enabled = true,
        open_on_run = "yes",
      },
      dap = { justMyCode = false },
      args = { "-vvv", "-s" },
      env = { "--settings", "settings.dev_qa", "--hubName", "selenoid", "--browser_name", "chrome" },
      runner = "pytest",
    }),
    require("neotest-plenary"),
    require("neotest-go"),
  },
})
