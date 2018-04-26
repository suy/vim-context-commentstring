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

let g:context#commentstring#table['javascript.jsx'] = {
			\ 'jsxStatment' : '/*%s*/',
			\ 'jsxRegion' : '{/*%s*/}',
			\}

let g:context#commentstring#table['typescript.tsx'] = {
			\ 'tsxStatment' : '/*%s*/',
			\ 'tsxRegion' : '{/*%s*/}',
			\}

let g:context#commentstring#table.vue = {
			\ 'javaScript'  : '//%s',
			\ 'cssStyle'    : '/*%s*/',
			\}

let g:context#commentstring#table['typescript.jsx'] = g:context#commentstring#table['typescript.tsx']

