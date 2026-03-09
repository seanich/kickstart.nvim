return {
  '3rd/image.nvim',
  build = false,
  opts = {
    processor = 'magick_cli',
  },
  config = function()
    vim.g.image_scale_factor = 1.0

    require('image').setup {
      max_width = nil,
      max_height = nil,
      max_width_window_percentage = nil,
      max_height_window_percentage = 80,
      scale_factor = vim.g.image_scale_factor or 1.0,
    }

    local function change_image_scale(delta)
      vim.g.image_scale_factor = (vim.g.image_scale_factor or 1.0) * delta

      require('image').setup {
        scale_factor = vim.g.image_scale_factor,
      }
    end

    vim.keymap.set('n', '<leader>zi', function() change_image_scale(1.25) end, { desc = 'Image zoom in (global)' })
    vim.keymap.set('n', '<leader>zo', function() change_image_scale(1 / 1.25) end, { desc = 'Image zoom out (global)' })
  end,
}
