vim.cmd([[
    function! FindFiles()
        echo system("find . -type f -not -path './.git/*'")
    endfunction

    command! FindFiles call FindFiles()
]])
