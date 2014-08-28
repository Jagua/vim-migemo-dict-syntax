" vim: set et ft=vim sts=2 sw=2 ts=2 :
if !exists('g:main_syntax')
  if exists('b:current_syntax') && b:current_syntax == 'migemo-dict'
    finish
  endif
  let g:main_syntax = 'migemo-dict'
endif

let s:cpo_save = &cpo
set cpo&vim

syntax match migemoLine '^\S\+\t.\+$' contains=CONTAINED
syntax match migemoHiragana '^\S\+\ze' contained
syntax match migemoCandidates '\t\zs.\+$' contained

highlight default link migemoHiragana Identifier
highlight default link migemoCandidates Type

let b:current_syntax = 'migemo-dict'
if g:main_syntax == 'migemo-dict'
  unlet g:main_syntax
endif

let &cpo = s:cpo_save
unlet s:cpo_save

