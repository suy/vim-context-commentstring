" This file is part of vim-context_commentstring.
" Copyright: © 2013 Alejandro Exojo Piqueras <http://disperso.net/>
" License: MIT (see doc for details).

if exists('g:loaded_context_commentstring')
  finish
endif


augroup ContextCommentstringBootstrap
	autocmd!
	autocmd FileType * call <SID>Bootstrap()
augroup END


function! s:Bootstrap()
	if !empty(&filetype) && has_key(g:context_commentstring#table, &filetype)
		let b:original_commentstring=&l:commentstring
		augroup ContextCommentstringEnabled
			autocmd!
			autocmd CursorMoved <buffer> call <SID>UpdateCommentString()
		augroup END
	endif
endfunction


function! s:UpdateCommentString()
	let stack = synstack(line('.'), col('.'))
	if !empty(stack)
		for name in map(stack, 'synIDattr(v:val, "name")')
			if has_key(g:context_commentstring#table[&filetype], name)
				let &commentstring = g:context_commentstring#table[&filetype][name]
				return
			endif
		endfor
	endif
	let &l:commentstring = b:original_commentstring
endfunction


let g:loaded_context_commentstring = 1
