function! PrettyPrintJson() range
python << EOF

import vim
import json

text = vim.current.range[0]
json_data = json.loads(text)
del vim.current.range[0]

vim.current.range.append(json.dumps(json_data, indent=4).split('\n'))

EOF
endfunction
