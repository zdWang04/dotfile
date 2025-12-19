-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("User", {
  pattern = "LazyVimSetup",
  callback = function()
    -- 在 LazyVim 设置完成后扩展配置
    local config = require("conform").get_config()

    -- 添加 prettier 到 markdown
    config.formatters_by_ft.markdown = { "prettier" }
    config.formatters_by_ft["markdown.mdx"] = { "prettier" }

    -- 配置 prettier
    config.formatters.prettier = {
      command = "/home/dongdong/.local/share/nvim/mason/packages/prettier/node_modules/prettier/bin/prettier.cjs",
      args = { "--stdin-filepath", "$FILENAME" },
      stdin = true,
    }

    require("conform").setup(config)
  end,
})
