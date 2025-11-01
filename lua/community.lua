---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.cpp" },
  -- FIXME: Wait until the warning is fixed:
  -- { import = "astrocommunity.pack.lean" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.toml" },
}
