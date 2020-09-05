" WHICH-KEY SETTINGS "

" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
let g:which_key_map['H'] = [ ':History'                   , 'split right']

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }


" a is for asciidoctor
let g:which_key_map.a = {
      \ 'name' : '+asciidoctor' ,
      \ 'h' : [':Asciidoctor2HTML'     , 'Covert to HTML'],
      \ 'p' : [':Asciidoctor2PDF'      , 'Convert to PDF'],
      \ 'o' : [':AsciidoctorOpenHTML'  , 'Open HTML'],
      \ }

" b is for buffers
let g:which_key_map.b = {
      \ 'name' : '+buffers' ,
      \ 'd' : [':bd'              , 'Delete buffer'],
      \ 'n' : [':bnext'           , 'Next buffer'],
      \ 'p' : [':bprev'           , 'Previous buffer'],
      \ }

" c is for coc/code
let g:which_key_map.c = {
      \ 'name' : '+code/coc' ,
      \ 'f' : ['<Plug>(coc-format)'                  , 'Format'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'Quick fix'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'Code action'],
      \ 's' : ['<Plug>(coc-codeaction-selected)'     , 'Code action selected'],
      \ 'r' : ['<Plug>(coc-rename)'                  , 'Rename'],
      \}

" g is for git 
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'f' : ['<Plug>(signify-next-hunk)'  , 'Next change'],
      \ 'b' : ['<Plug>(signify-prev-hunk)'  , 'Previous change'],
      \ 'd' : [':Gdiffsplit'                , 'Diff'],
      \ '%' : [':Git add %'                 , 'Add'],
      \ '.' : [':Git add .'                 , 'Add all'],
      \ 'c' : [':Gcommit'                , 'Commit'],
      \ 'h' : [':Gclog'                     , 'History'],
      \ 'l' : [':Git log'                   , 'Log'],
      \ 's' : [':Gstatus'                   , 'Status'],
      \ 'a' : [':Gblame'                    , 'Annotate'],
      \ 'p' : [':Gpush'                     , 'Push'],
      \ 'P' : [':Gpull'                     , 'Pull'],
      \}

" l is for latex
let g:which_key_map.l = {
      \ 'name' : '+latex' ,
      \ 'c' : [':VimtexCompile'         , 'Compile'],
      \ 'C' : [':VimtexClean'           , 'Clean'],
      \ 'e' : [':VimtexErrors'          , 'Errors'],
      \ 's' : [':VimtexStop'            , 'Stop'],
      \ 't' : [':VimtexTocToggle'       , 'TOC toggle'],
      \}
call which_key#register('<Space>', "g:which_key_map")
