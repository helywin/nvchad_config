local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {
   b.formatting.prettier.with({
     filetypes = { "html", "json", "yaml", "markdown" },
   }),
   -- Lua
   b.formatting.stylua,

   -- Shell
   b.formatting.shfmt,
   b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
   -- cpp
   b.formatting.clang_format,
   -- cmake
   b.formatting.cmake_format,
}

null_ls.setup {
   debug = true,
   sources = sources,
}
