local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')

require('telescope').setup {
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--vimgrep',
    },
    layout_strategy = "vertical",
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    path_display = { "tail" },
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
    },
    file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
    grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
    qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
  }
}

require('telescope').load_extension('gh')

-- setup module
local M = {}

M.file_browser = function()
  require('telescope.builtin').file_browser({
    attach_mappings = function(prompt_bufnr, map)
      -- live grep within file browser CWD
      map('i', '<C-g>', function()
        local content = action_state.get_selected_entry(prompt_bufnr)
        actions._close(prompt_bufnr, true)
        require('telescope.builtin').grep_string({
          only_sort_text = true,
          search = '',
          prompt_title = 'Find - ' .. content.cwd,
          cwd = content.cwd,
        })
      end)

      return true
    end
  })
end

return M
