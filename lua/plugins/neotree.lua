return {
  "nvim-neo-tree/neo-tree.nvim",
   branch = "v3.x",
   dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
  opts = {
    filesystem = {
      filtered_items = {
        --visible = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          ".github",
          ".gitignore",
          "package-lock.json",
        },
        never_show = { ".git" },
      },
    },
  }, 
  config = function()
           -- NeoTree keymaps
            vim.keymap.set('n', '<leader>lt', function() vim.cmd("Neotree") end, {})
            vim.keymap.set('n', '<leader>b', function() vim.cmd("Neotree close") end, {})

            require("neo-tree").setup({
              event_handlers = {
                {
                  event = "file_opened",
                  handler = function(file_path)
                             vim.cmd("Neotree close")
                            end
                },
              }
          })
      end
}
