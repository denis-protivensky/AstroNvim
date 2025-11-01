local opt = vim.opt

-- configure spelling and locales
-- NOTE: don't use astrocore options as the order of plugins is
-- non-deterministic so the options may be overridden later
opt.spelllang = { "en", "ru" }
opt.spell = true
opt.keymap = "russian-jcukenwin"
opt.iminsert = 0
opt.imsearch = 0
