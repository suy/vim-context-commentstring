" Sample from `:h :lua`

function! CurrentLineInfo()
lua << EOF
local linenr = vim.api.nvim_win_get_cursor(0)[1]
local curline = vim.api.nvim_buf_get_lines(
        0, linenr, linenr + 1, false)[1]
-- This line should be properly wrapped when using `gw`. Also, typing after the
-- comment block, it should break the line to the next, and automatically insert
-- the comment character. Without 'comments' properly set, it doesn't.
print(string.format("Current line [%d] has %d bytes",
        linenr, #curline))
EOF
endfunction


" Sample from `:h :python`

function! IcecreamInitialize()
python << EOF
class StrawberryIcecream:
    def __call__(self):
        print 'EAT ME'
EOF
endfunction
