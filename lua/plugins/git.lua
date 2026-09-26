return {
  {
    "folke/snacks.nvim",
    opts = {
      scroll = {
        filter = function(buf)
          -- CodeDiff owns scroll synchronization, animating it makes the peer pane flicker.
          local lifecycle = package.loaded["codediff.ui.lifecycle"]
          local in_review = lifecycle and lifecycle.get_session(vim.api.nvim_get_current_tabpage())
          return not in_review
            and vim.g.snacks_scroll ~= false
            and vim.b[buf].snacks_scroll ~= false
            and vim.bo[buf].buftype ~= "terminal"
        end,
      },
    },
    keys = {
      { "<leader>gd", false },
      { "<leader>gD", false },
    },
  },
  {
    "esmuellert/codediff.nvim",
    version = "*",
    cmd = "CodeDiff",
    keys = {
      { "<leader>gd", "<cmd>CodeDiff<cr>", desc = "Review Git Changes" },
      { "<leader>gD", "<cmd>CodeDiff --staged<cr>", desc = "Review Staged Changes" },
      { "<leader>gf", "<cmd>CodeDiff history %<cr>", desc = "Review File History" },
      {
        "<leader>gq",
        function()
          require("codediff.ui.lifecycle").close()
        end,
        desc = "Close Git Review",
      },
    },
    opts = {
      diff = { layout = "inline" },
      keymaps = {
        view = {
          stage_hunk = "<M-s>",
          unstage_hunk = "<M-u>",
          discard_hunk = "<M-x>",
          quit = { "q", "<leader>gq" },
          toggle_layout = "<leader>gt",
          toggle_compact = "<leader>gC",
        },
      },
    },
  },
}
