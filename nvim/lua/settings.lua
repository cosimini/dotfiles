-- Neovim settings
    vim.g.mapleader = "\\" 

-- Graphical stuff
    vim.opt.title = true            -- Show window title
    vim.opt.number = true           -- Show line number
    vim.opt.relativenumber = true   -- Show relative numbers
    vim.opt.cursorline = true       -- Highlight cursor line
    vim.opt.showcmd = true          -- Show typed command on bottom-right corner
    vim.cmd.syntax("on")            -- Syntax highlight
    vim.opt.linebreak = true        -- Enable wrap
    vim.opt.breakindent = true      -- Keep indentation at wraps
    vim.opt.showbreak = ".."        -- Marker placed at wrap position
    -- status line
        vim.opt.laststatus = 2 						                    -- Statusline always visible
        status_line_string = "%n: %f  "                                 -- filename
        status_line_string = status_line_string .. "%y  "               -- filetype
        status_line_string = status_line_string .. "%h%m%r"             -- help/mod/RO tags
        status_line_string = status_line_string .. "%="                 -- align right
        status_line_string = status_line_string .. "line:%l/%L[%p%%]"   -- line/tot[perc]
        status_line_string = status_line_string .. " col:%c"            -- column
        vim.opt.statusline = status_line_string

-- Editing behaviour
    vim.opt.backspace = {"indent", "eol", "start"}  -- Allow backspacing over everything
    vim.opt.autoindent = true                       -- Load an indent file for the detected file type.
    vim.opt.incsearch = true                        -- Incremental seach
    vim.opt.hlsearch = true                         -- Highlight search
    vim.opt.ignorecase = true                       -- By default, ignore case in search terms
    vim.opt.smartcase = true                        -- Consider case only if a uppercase character is present
    vim.opt.scrolloff = 2                           -- Cursor never reach the bottom of the screen
    vim.opt.expandtab = true                        -- Expand tabs by default (that should go in filetypes)
    vim.opt.tabstop = 4                             -- 
    vim.opt.shiftwidth = 4                          -- 

-- File management
    vim.opt.hidden = true                           -- Allow swap from unsaved buffer
    vim.opt.swapfile = false                        -- Disable swap file (gave me problems sometimes)

-- Builtin plugins
    vim.cmd.filetype({"indent", "plugin", "on"})    -- Enable filetype detection plugin autoload
    vim.opt.wildmenu = true                         -- Enable wildmenu
    vim.opt.wildmode = {"longest:full", "full"}     -- Wildmenu settings
    vim.opt.wildoptions = {"pum", "fuzzy"}          -- PopUpMenu (vertical) and fuzzy search in wildmenu
    vim.opt.omnifunc = "syntaxcomplete#Complete"    -- Enable Omnicompletition plugin
    vim.opt.completeopt = {'menuone', 'preview'}    -- Better complete menu
    vim.opt.exrc = true                             -- Enable local RC files (.exrc file in ./)
    vim.opt.secure = true                           -- Security settings for local RC files
    vim.g.loaded_netrw = 1                          -- Do not load NetRW
    vim.g.loaded_netrwPlugin = 1                    -- Do not load NetRW
