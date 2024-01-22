vim.cmd([[
    function! Align(start, end, char, width)
        for l in range(a:start, a:end)
            execute ":" . l . "norm!f" . a:char . "200i 0" . a:width . "ldt" . a:char
        endfor
    endfunction

    function! FindFiles()
        echo system("find . -type f -not -path './.git/*'")
    endfunction

    command! -range -nargs=+ Align call Align(<line1>, <line2>, <f-args>)
    command! FindFiles call FindFiles()
]])
