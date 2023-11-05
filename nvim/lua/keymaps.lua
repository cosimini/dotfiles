-- Keymaps

local def_ops = { noremap = true, silent = true }  -- Default settings for mappings

-- Normal mode only bindings
    -- Single key binds
    vim.keymap.set("n", "<space>", ":ls<CR>:b<space>", {noremap = true})            -- List available buffers with <space>
    vim.keymap.set("n", "<esc>", ":noh<CR>", def_ops)                               -- Clear highlight with backspace
    -- Alt key binds
    vim.keymap.set("n", "<A-j>", ":bn<CR>", def_ops)                                -- Next buffer
    vim.keymap.set("n", "<A-k>", ":bp<CR>", def_ops)                                -- Previous buffer
    vim.keymap.set("n", "<A-l>", ":tabnext<CR>", def_ops)                           -- Next tab
    vim.keymap.set("n", "<A-h>", ":tabprevious<CR>", def_ops)                       -- Previous tab
    -- leader key binds
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", def_ops)                -- Toggle nvim-tree
    vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", def_ops)         -- Find files with Telescope
    vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", def_ops)            -- Search buffers with telescope

-- Insert mode only bindings
    -- Auto match quotes and parethesis
    vim.keymap.set("i", "\"", "\"\"<Left>", def_ops)                                -- Pair quotes
    vim.keymap.set("i", "(", "()<Left>", def_ops)                                   -- Pair ()
    vim.keymap.set("i", "[", "[]<Left>", def_ops)                                   -- Pair []
    vim.keymap.set("i", "{", "{}<Left>", def_ops)                                   -- Pair {}
