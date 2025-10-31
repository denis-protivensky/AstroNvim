---@type LazySpec
return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      -- Mappings can be configured through AstroCore as well.
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
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      -- mappings to be set up on attaching of a language server
      mappings = {
        n = {
          -- Header/source switching for C/C++
          ["<LocalLeader>s"] = {
            desc = "hpp ↔ cpp",
          },
          ["<LocalLeader>ss"] = {
            ":ClangdSwitchSourceHeader<CR>",
            desc = "Switch inplace",
            cond = function(_, bufnr)
              local filetype = vim.bo[bufnr].filetype
              return filetype == "cpp" or filetype == "c"
            end,
          },
          ["<LocalLeader>sv"] = {
            ":vsplit<CR>:ClangdSwitchSourceHeader<CR>",
            desc = "Switch with split",
            cond = function(_, bufnr)
              local filetype = vim.bo[bufnr].filetype
              return filetype == "cpp" or filetype == "c"
            end,
          },
        },
      },
    },
  },
}
