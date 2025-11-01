local function switch_locale()
  local key = vim.api.nvim_replace_termcodes("<C-^>", true, false, true)
  vim.api.nvim_feedkeys(key, 'n', false)
end

---@type LazySpec
return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map

          ["gs"] = {
            "i<CR><Esc>",
            desc = "Split lines under cursor",
          },

          -- tables with just a `desc` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          -- ["<Leader>b"] = { desc = "Buffers" },

          -- setting a mapping to false will disable it
          -- ["<C-S>"] = false,
        },
        i = {
          ["<Leader><Leader>S"] = {
            switch_locale,
            desc = "Switch locale (keymap)",
          },
        },
        c = {
          ["<Leader><Leader>S"] = {
            switch_locale,
            desc = "Switch locale (keymap)",
          },
        },
      },
    },
  },
}
