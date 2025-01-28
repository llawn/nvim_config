return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')

	-- Search for files in the current project (find_files)
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

	-- Search for files tracked by Git (git_files)
        vim.keymap.set('n', '<leader>gf', builtin.git_files, {})

	-- Search the current word under the cursor
        vim.keymap.set('n', '<leader>fw', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)

	-- Search the current WORD (including punctuation)
        vim.keymap.set('n', '<leader>fW', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)

	-- Prompt for a search term and perform a grep search in a project
        vim.keymap.set('n', '<leader>gs', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        
	-- Open help tags search
	vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
end
}
