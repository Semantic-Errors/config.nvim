return {
  "nvim-telescope/telescope.nvim",

  dependencies = {"nvim-lua/plenary.nvim"},

  keys = {
    { "<leader>pf", function() require("telescope.builtin").find_files({}) end, desc = "Search [P]roject [F]iles" },
    { "<leader>pg", function() require("telescope.builtin").git_files({}) end, desc = "Search [P]roject's [G]it files" },
    { "<leader>ps",function()
        require("telescope.builtin").grep_string({
          search = vim.fn.input("Grep > ")
      }) end, desc = "Search for word in Project"
    },
    { "<leader>sh", function() require("telescope.builtin").help_tags({}) end, desc = "[S]earch [H]elp" },
    { "<leader>sk", function() require("telescope.builtin").keymaps({}) end, desc = "[S]earch [K]eymaps" },
    { "<leader>stb", function() require("telescope.builtin").builtin() end, desc = "[S]earch [T]elescope [B]uiltins" },
  },
}
