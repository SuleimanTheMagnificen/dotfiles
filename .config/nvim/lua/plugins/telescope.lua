return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    version = false, -- telescope did only one release, so use HEAD for now
    defaults = {
      file_ignore_patterns = { "node_modules" },
    },
  },
}
