---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    config = {
      clangd = {
        cmd = {
          'clangd',
          '--clang-tidy',
          '--background-index',
          '--log=verbose',
        },
      },
    },
  },
}
