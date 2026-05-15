return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      virtual_text = {
        current_line = false, -- show on ALL lines (set true to only show on cursor line)
        spacing = 4,
        prefix = "●",
      },
      virtual_lines = {
        current_line = true, -- show expanded virtual line ONLY on cursor line
      },
      signs = true,
      underline = true,
      update_in_insert = false,
      severity_sort = true,
    },
  },
}
