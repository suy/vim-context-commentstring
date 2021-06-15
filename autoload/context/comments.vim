" This file is part of vim-context-commentstring.
" Copyright: © 2013-2021 Alejandro Exojo Piqueras <http://disperso.net/>
" License: MIT (see doc for details).

let g:context#comments#table = {}

let g:context#comments#table['vim'] = {
			\ 'vimLuaRegion'     : ':--',
			\}

let g:context#comments#table['vue'] = {
			\ 'htmlTag': 's:<!--,m:    ,e:-->',
			\ 'vue_typescript': 's1:/*,mb:*,ex:*/,://',
			\ 'cssStyle': 's1:/*,mb:*,ex:*/,://',
			\ }

