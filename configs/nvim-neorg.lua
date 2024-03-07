local present, neorg = pcall(require, "neorg")

if not present then
  return
end

neorg.setup {
  load = {
    ["core.defaults"] = {}, -- Loads default behaviour
    ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
    ["core.norg.dirman"] = { -- Manages Neorg workspaces
      config = {
        workspaces = {
          notes = "~/notes",
        },
      },
    },
  },
}
