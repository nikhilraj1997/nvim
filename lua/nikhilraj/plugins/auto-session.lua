return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup {
      log_level = "error",
      auto_session_suppress_dirs = { "~/", "~/Documents", "~/Downloads", "~/Desktop", "~/Pictures", "~/Videos", "~/Music", "~/Templates", "~/Public", "~/snap", "/tmp", "/var",},
    }
  end,
}