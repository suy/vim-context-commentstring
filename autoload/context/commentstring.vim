" This file is part of vim-context_commentstring.
" Copyright: © 2013 Alejandro Exojo Piqueras <http://disperso.net/>
" License: MIT (see doc for details).

let g:context#commentstring#table = {}

let g:context#commentstring#table.vim = {
			\ 'vimLuaRegion'     : '--%s',
			\ 'vimPerlRegion'    : '#%s',
			\ 'vimPythonRegion'  : '#%s',
			\}

let g:context#commentstring#table.html = {
			\ 'javaScript'  : '//%s',
			\ 'cssStyle'    : '/*%s*/',
			\}

let g:context#commentstring#table.xhtml = g:context#commentstring#table.html

let s:react = {
			\ 'jsComment' : '// %s',
			\ 'jsImport' : '// %s',
			\ 'jsxStatment' : '// %s',
			\ 'jsxRegion' : '{/*%s*/}',
			\ 'jsxTag' : '{/*%s*/}',
			\}
let g:context#commentstring#table['javascript.jsx'] = s:react
let g:context#commentstring#table['typescript.jsx'] = s:react
let g:context#commentstring#table['typescript.tsx'] = s:react
let g:context#commentstring#table['typescriptreact'] = {
      \ 'tsxRegion': '{/*%s*/}'
      \}

let g:context#commentstring#table.vue = {
			\ 'javaScript'  : '//%s',
			\ 'cssStyle'    : '/*%s*/',
			\}
