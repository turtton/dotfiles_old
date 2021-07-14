vim.api.nvim_set_keymap('n', '<leader>gp', ':VGit hunk_preview<CR>', {
    noremap = true,
    silent = true,
})
vim.api.nvim_set_keymap('n', '<leader>gr', ':VGit hunk_reset<CR>', {
    noremap = true,
    silent = true,
})
vim.api.nvim_set_keymap('n', '<C-k>', ':VGit hunk_up<CR>', {
    noremap = true,
    silent = true,
})
vim.api.nvim_set_keymap('n', '<C-j>', ':VGit hunk_down<CR>', {
    noremap = true,
    silent = true,
})
vim.api.nvim_set_keymap('n', '<leader>gf', ':VGit buffer_preview<CR>', {
    noremap = true,
    silent = true,
})
vim.api.nvim_set_keymap('n', '<leader>gh', ':VGit buffer_history<CR>', {
    noremap = true,
    silent = true,
})
vim.api.nvim_set_keymap('n', '<leader>gu', ':VGit buffer_reset<CR>', {
    noremap = true,
    silent = true,
})
vim.api.nvim_set_keymap('n', '<leader>gd', ':VGit diff<CR>', {
    noremap = true,
    silent = true,
})
vim.api.nvim_set_keymap('n', '<leader>gq', ':VGit hunks_quickfix_list<CR>', {
    noremap = true,
    silent = true,
})

require('vgit').setup({
    debug = false,
    hunks_enabled = true,
    blames_enabled = true,
    diff_preference = 'horizontal',
    diff_strategy = 'remote',
    predict_hunk_signs = true,
    hls = {
        VGitBlame = {
            bg = nil,
            fg = '#b1b1b1',
        },
        VGitDiffAddSign = {
            bg = '#3d5213',
            fg = nil,
        },
        VGitDiffRemoveSign = {
            bg = '#4a0f23',
            fg = nil,
        },
        VGitDiffAddText = {
            fg = '#6a8f1f',
            bg = '#3d5213',
        },
        VGitDiffRemoveText = {
            fg = '#a3214c',
            bg = '#4a0f23',
        },
        VGitHunkAddSign = {
            bg = '#3d5213',
            fg = nil,
        },
        VGitHunkRemoveSign = {
            bg = '#4a0f23',
            fg = nil,
        },
        VGitHunkAddText = {
            fg = '#6a8f1f',
            bg = '#3d5213',
        },
        VGitHunkRemoveText = {
            fg = '#a3214c',
            bg = '#4a0f23',
        },
        VGitHunkSignAdd = {
            fg = '#d7ffaf',
            bg = '#4a6317',
        },
        VGitHunkSignRemove = {
            fg = '#e95678',
            bg = '#63132f',
        },
        VGitSignAdd = {
            fg = '#d7ffaf',
            bg = nil,
        },
        VGitSignChange = {
            fg = '#7AA6DA',
            bg = nil,
        },
        VGitSignRemove = {
            fg = '#e95678',
            bg = nil,
        },
        VGitHistoryIndicator = {
            fg = '#a6e22e',
            bg = nil,
        },
        VGitBorder = {
            fg = '#a1b5b1',
            bg = nil,
        },
        VGitBorderFocus = {
            fg = '#7AA6DA',
            bg = nil,
        },
    },
    blame = {
        hl = 'VGitBlame',
        window = {
            border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
            border_hl = 'VGitBorder',
        },
        format = function(blame, git_config)
            local config_author = git_config['user.name']
            local author = blame.author
            if config_author == author then
                author = 'You'
            end
            local time = os.difftime(os.time(), blame.author_time) / (24 * 60 * 60)
            local time_format = string.format('%s days ago', round(time))
            local time_divisions = { { 24, 'hours' }, { 60, 'minutes' }, { 60, 'seconds' } }
            local division_counter = 1
            while time < 1 and division_counter ~= #time_divisions do
                local division = time_divisions[division_counter]
                time = time * division[1]
                time_format = string.format('%s %s ago', round(time), division[2])
                division_counter = division_counter + 1
            end
            local commit_message = blame.commit_message
            if not blame.committed then
                author = 'You'
                commit_message = 'Uncommitted changes'
                local info = string.format('%s • %s', author, commit_message)
                return string.format(' %s', info)
            end
            local max_commit_message_length = 255
            if #commit_message > max_commit_message_length then
                commit_message = commit_message:sub(1, max_commit_message_length) .. '...'
            end
            local info = string.format('%s, %s • %s', author, time_format, commit_message)
            return string.format(' %s', info)
        end
    },
    preview = {
        priority = 10,
        horizontal_window = {
            title = ('preview/horizontal'),
            border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
            border_hl = 'VGitBorder',
            border_focus_hl = 'VGitBorderFocus'
        },
        current_window = {
            title = ('preview/current'),
            border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
            border_hl = 'VGitBorder',
            border_focus_hl = 'VGitBorderFocus'
        },
        previous_window = {
           title = ('preview/previous'),
            border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
            border_hl = 'VGitBorder',
            border_focus_hl = 'VGitBorderFocus'
        },
        signs = {
            add = {
                name = 'VGitDiffAddSign',
                sign_hl = 'VGitDiffAddSign',
                text_hl = 'VGitDiffAddText',
                text = '+'
            },
            remove = {
                name = 'VGitDiffRemoveSign',
                sign_hl = 'VGitDiffRemoveSign',
                text_hl = 'VGitDiffRemoveText',
                text = '-'
            },
        },
    },
    history = {
        indicator = {
            hl = 'VGitHistoryIndicator'
        },
        horizontal_window = {
            title = ('history/horizontal'),
            border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
            border_hl = 'VGitBorder',
            border_focus_hl = 'VGitBorderFocus'
        },
        current_window = {
            title = ('history/current'),
            border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
            border_hl = 'VGitBorder',
            border_focus_hl = 'VGitBorderFocus'
        },
        previous_window = {
            title = ('history/previous'),
            border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
            border_hl = 'VGitBorder',
            border_focus_hl = 'VGitBorderFocus'
        },
        history_window = {
            title = ('history/history'),
            border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
            border_hl = 'VGitBorder',
            border_focus_hl = 'VGitBorderFocus'
        },
    },
    hunk = {
        priority = 10,
        window = {
            border = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
            border_hl = 'VGitBorder',
        },
        signs = {
            add = {
                name = 'VGitHunkAddSign',
                sign_hl = 'VGitHunkAddSign',
                text_hl = 'VGitHunkAddText',
                text = '+'
            },
            remove = {
                name = 'VGitHunkRemoveSign',
                sign_hl = 'VGitHunkRemoveSign',
                text_hl = 'VGitHunkRemoveText',
                text = '-'
            },
        },
    },
    hunk_sign = {
        priority = 10,
        signs = {
            add = {
                name = 'VGitSignAdd',
                hl = 'VGitSignAdd',
                text = '│'
            },
            remove = {
                name = 'VGitSignRemove',
                hl = 'VGitSignRemove',
                text = '│'
            },
            change = {
                name = 'VGitSignChange',
                hl = 'VGitSignChange',
                text = '│'
            },
        },
    },
    current_widget = {}
})
 
