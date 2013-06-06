" This file is part of vim-context_commentstring.
" Copyright: © 2013 Alejandro Exojo Piqueras <http://disperso.net/>
" License: MIT (see doc for details).

let g:context_commentstring#table = {}

let g:context_commentstring#table.vim = {
			\ 'vimLuaRegion'     : '--%s',
			\ 'vimPerlRegion'    : '#%s',
			\ 'vimPythonRegion'  : '#%s',
			\}

let g:context_commentstring#table.html = {
			\ 'javaScript'  : '//%s',
			\ 'cssStyle'    : '/*%s*/',
			\}
