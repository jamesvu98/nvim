vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.o.relativenumber = true

local function get_git_root()
  local dot_git_path = vim.fn.finddir('.git', '.;')
  return vim.fn.fnamemodify(dot_git_path, ':h')
end

vim.api.nvim_create_augroup('tree_on_open', { clear = true })

vim.api.nvim_create_autocmd('BufEnter', {
  group = 'tree_on_open',
  pattern = '*',
  callback = function()
    vim.api.nvim_set_current_dir(get_git_root())
  end,
})
