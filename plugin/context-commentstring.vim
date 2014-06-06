" This file is part of vim-context_commentstring.
" Copyright: © 2013-2014 Alejandro Exojo Piqueras <http://disperso.net/>
" License: MIT (see doc for details).

if exists('g:loaded_context_commentstring')
  finish
endif


augroup ContextCommentstringBootstrap
	autocmd!
	autocmd FileType * call <SID>Setup()
augroup END


function! s:Setup()
	augroup ContextCommentstringEnabled
		" Clear previous autocommands first in all cases, in case the filetype
		" changed from something in the table, to something NOT in the table.
		autocmd! CursorMoved <buffer>
		if !empty(&filetype) && has_key(g:context#commentstring#table, &filetype)
			let b:original_commentstring=&l:commentstring
			autocmd CursorMoved <buffer> call <SID>UpdateCommentString()
		endif
	augroup END
endfunction


function! s:UpdateCommentString()
	let stack = synstack(line('.'), col('.'))
	if !empty(stack)
		for name in map(stack, 'synIDattr(v:val, "name")')
			if has_key(g:context#commentstring#table[&filetype], name)
				let &l:commentstring = g:context#commentstring#table[&filetype][name]
				return
			endif
		endfor
	endif
	let &l:commentstring = b:original_commentstring
endfunction


let g:loaded_context_commentstring = 1
