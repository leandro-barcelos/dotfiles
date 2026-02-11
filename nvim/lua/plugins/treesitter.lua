return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  opts = {install_dir = vim.fn.stdpath('data') .. '/site'},
  config = function()
    require'nvim-treesitter'.install {'cpp', 'c', 'python', 'lua', 'javascript', 'rust', 'css', 'cmake'}
    vim.api.nvim_create_autocmd('FileType', {
      pattern = {'cpp', 'c', 'python', 'lua', 'javascript', 'rust', 'css', 'cmake'},
      callback = function() 
      vim.treesitter.start() 
      vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end
}
