" This file is part of vim-context-commentstring.
" Copyright: © 2013-2021 Alejandro Exojo Piqueras <http://disperso.net/>
" License: MIT (see doc for details).

let g:context#commentstring#table = {}

let g:context#commentstring#table['vim'] = {
			\ 'vimLuaRegion'     : '--%s',
			\ 'vimPerlRegion'    : '#%s',
			\ 'vimPythonRegion'  : '#%s',
			\}

let g:context#commentstring#table['html'] = {
			\ 'javaScript'  : '//%s',
			\ 'cssStyle'    : '/*%s*/',
			\}

let g:context#commentstring#table['xhtml'] = g:context#commentstring#table['html']

let g:context#commentstring#table['javascript.jsx'] = {
			\ 'jsComment' : '//%s',
			\ 'jsImport' : '//%s',
			\ 'jsxStatment' : '//%s',
			\ 'jsxRegion' : '{/*%s*/}',
			\ 'jsxTag' : '{/*%s*/}',
			\}

let g:context#commentstring#table['typescript.jsx'] =
			\ g:context#commentstring#table['javascript.jsx']

let g:context#commentstring#table['typescript.tsx'] = {
			\ 'tsComment' : '//%s',
			\ 'tsImport' : '//%s',
			\ 'tsxStatment' : '//%s',
			\ 'tsxRegion' : '{/*%s*/}',
			\ 'tsxTag' : '{/*%s*/}',
			\}

let g:context#commentstring#table['vue'] = {
			\ 'javaScript'  : '//%s',
			\ 'cssStyle'    : '/*%s*/',
			\ 'vue_scss'    : '/*%s*/',
			\ 'vue_pug'    : '// %s',
			\}

