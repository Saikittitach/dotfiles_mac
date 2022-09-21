require "core"
require "core.options"

vim.defer_fn(function()
  require("core.utils").load_mappings()
end, 0)

require("core.keymaps")
-- setup packer + plugins
require("core.packer").bootstrap()
require "plugins"

pcall(require, "custom")
