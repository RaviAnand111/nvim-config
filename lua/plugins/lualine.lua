local function filename_with_parents()
  local filepath = vim.fn.expand("%:p") -- Get full path of current file
  local parts = vim.split(filepath, "/") -- Split path by '/'
  local depth = #parts                  -- Get the number of parts in the path

  -- If there are fewer than 3 parts, just return the whole filepath
  if depth < 3 then
    return vim.fn.expand("%:t") -- Return just the filename if not enough parents
  else
    -- Otherwise, get the last three parts: parent1/parent2/filename
    return table.concat({ parts[depth - 2], parts[depth - 1], parts[depth] }, "/")
  end
end

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diagnostics" },
        lualine_c = { filename_with_parents },
        lualine_x = { "filetype" },
        lualine_y = {},
        lualine_z = { "location" },
      },
    })
  end,
}
