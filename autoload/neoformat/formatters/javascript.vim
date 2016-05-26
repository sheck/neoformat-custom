function! neoformat#formatters#javascript#enabled()
    return ['jsbeautify', 'prettydiff', 'clangformat', 'esformatter']
endfunction

function! neoformat#formatters#javascript#jsbeautify()
    return {'exe': 'js-beautify'}
endfunction

function! neoformat#formatters#javascript#clangformat()
    return {'exe': 'clang-format'}
endfunction

function! neoformat#formatters#javascript#prettydiff()
    return {
        \ 'exe': 'prettydiff',
        \ 'args': ['mode:"beautify"',
                 \ 'lang:"javascript"',
                 \ 'readmethod:"filescreen"',
                 \ 'endquietly:"quiet"',
                 \ 'source:"%:p"'],
        \ 'no_append': 1
        \ }
endfunction

function! neoformat#formatters#javascript#esformatter()
    return {
        \ 'exe': 'esformatter'
        \ }
endfunction
