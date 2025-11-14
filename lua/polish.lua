local opt = vim.opt

-- configure spelling and locales
-- NOTE: don't use astrocore options as the order of plugins is
-- non-deterministic so the options may be overridden later
opt.spelllang = { "en", "ru" }
opt.spell = true
opt.keymap = "russian-jcukenwin"
opt.iminsert = 0
opt.imsearch = 0

-- show 3 lines of context around the cursor
opt.scrolloff = 3

-- search down into subfolders
-- provides tab-completion for all file-related tasks
opt.path:append('**')

-- activate TAB auto-completion for file paths
opt.wildmode = 'list:longest,list:full'
opt.wildignore:append{
  '*.o,*.obj,*.pyc,*.pyo,*.class,*.jar,*.swp,*.swo,*.tmp,*.log,*.DS_Store,*.min.js,*.map',
  '*.png,*.jpg,*.jpeg,*.gif,*.zip,*.tar,*.gz,*.xz',
  '*/.git/*,*/.svn/*,*/.hg/*,*/.cache/*,*/node_modules/*,*/dist/*,*/build/*,*/target/*,*/out/*,*/bin/*,*/obj/*',
  '*/.next/*,*/.parcel-cache/*,*/coverage/*,*/__pycache__/*,*/.venv/*,*/venv/*,*/env/*,*/.idea/*,*/.vscode/*',
}

-- enable persistent undo
opt.undofile = true

-- show hidden characters
opt.list = true
-- hidden characters style
opt.listchars = { tab = '  ', trail = '·' }

-- don't save help pages in sessions
opt.sessionoptions:remove('help')
