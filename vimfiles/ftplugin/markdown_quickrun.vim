" markdown
let g:quickrun_config = {
\ 'markdown/update' : {
\   'outputter' : 'error',
\   'outputter/error/error' : 'message',
\   'command' : 'mkdpreview',
\   'srcfile' : expand("%"),
\   'cmdopt' : '-u',
\   'exec': '%c %o %s',
\   },
\
\ 'markdown/visual' : {
\   'outputter' : 'error',
\   'outputter/error/error' : 'message',
\   'command' : 'mkdpreview',
\   'cmdopt' : '-s -p',
\   'exec': '%c %o %s',
\   },
\}

let g:quickrun_config['markdown'] = {
\ 'outputter' : 'error',
\ 'outputter/error/error' : 'message',
\ 'command' : 'mkdpreview',
\ 'cmdopt' : '-s -p',
\ 'exec': '%c %o %s',
\}

let g:quickrun_config['mkd'] = {
\ 'outputter' : 'error',
\ 'outputter/error/error' : 'message',
\ 'command' : 'mkdpreview',
\ 'cmdopt' : '-s -p',
\ 'exec': '%c %o %s',
\}

augroup markdown_pandoc
  autocmd!
  autocmd BufWritePost,FileWritePost *.md :QuickRun -type markdown/update
augroup END

