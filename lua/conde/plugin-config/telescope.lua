local actions = require('telescope.actions')

require('telescope').setup {
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    initial_mode = 'insert',
    prompt_prefix = '',
    color_devicons = true,
    shorten_path = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    file_ignore_patterns = {},
    generic_sorter =  require('telescope.sorters').get_generic_fuzzy_sorter,
    file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
    grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
    qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
    mappings = {
      n = {
        ['<esc>'] = actions.close,
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous
      },
      i = {
        ['<esc>'] = actions.close,
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous
      },
    }
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    }
  }
}

require('telescope').load_extension('fzy_native')
require('telescope').load_extension('gh')

local action_state = require('telescope.actions.state')

-- setup module
local M = {}

M.file_browser = function()
  require('telescope.builtin').file_browser({
    attach_mappings = function(prompt_bufnr, map)
      -- live grep within file browser CWD
      map('i', '<C-g>', function()
        local content = action_state.get_selected_entry(prompt_bufnr)
        require('telescope.builtin').live_grep({
          prompt_title = 'Live Grep - ' .. content.cwd,
          cwd = content.cwd,
        })
      end)

      return true
    end
  })
end

return M
