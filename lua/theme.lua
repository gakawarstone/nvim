require('onedark').setup {
  highlights = {
	['@variable'] = {fg = '$red'},
	TSImport = {fg = '$yellow'}
  },
}


require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
}
