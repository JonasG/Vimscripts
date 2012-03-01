function! RobberLanguage() range
python << EOF

import vim

swedish_consonants = [ 'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm',
    'n', 'p', 'q', 'r', 's', 't' 'v', 'w', 'x', 'z' ]

range = vim.current.range
text = range[0]

for consonant in swedish_consonants:
    text = text.replace(consonant, consonant + 'o' + consonant)

vim.current.buffer[range.start] = text

EOF
endfunction
