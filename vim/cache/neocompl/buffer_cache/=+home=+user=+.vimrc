{'syntax', 'Vundle', 'nocompatible', 'filetype', 'bundle', 'call', 'vundle#begin(', 'basic', 'Plugin', 'gmarik', 'thinca', '-quickrun', 'fweep', '-tabber', 'xolox', '-misc', '-session', 'scrooloose', 'nerdtree', '-scripts', 'minibufexplorerpp', '-buftabline', 'BufLine', 'Shougo', 'unite', 'eagletmt', '-haddock', 'highlight', 'nathanaelkane', '-indent-guides', 'appearance', 'edkolev', 'promptline', 'tmuxline', 'bling', '-airline', '-bufferline', 'cytb', 'vimairline', '-powerlineish-modified', 'completion', 'neocomplete', 'neocomplcache', 'Obsolete', 'vimproc', 'Valloric', 'YouCompleteMe', 'ocaml', 'omlet', '-Rip', 'clang_complete', 'haskell', 'neco', '-ghc', 'mkasa', '-ghc-lushtags', 'lukerandall', 'haskellmode', '-vim', 'ghcmod', 'vim2hs', 'begriffs', '-vim-now', 'pbrisbin', '-syntax-shakespeare', 'mpickering', 'hlint', '-refactor-vim', 'xaizek', '-inccomplete', 'Igorjan94', 'codeforces', 'junegunn', '-easy-align', 'vundle#end(', 'plugin', 'indent', 'Utilities', 'function!', 'SourceIfExists(', 'file', 'l:expanded_path', 'expand(', 'a:file', 'filereadable(', 'exec', 'source', 'endif', 'return', 'endfunction', 'sessions', 'g:session_autosave', 'g:session_autoload', 'g:session_directory', '$HOME', '-sessions', 'lightline', 'itchyny', 'g:lightline', 'component', 'lineinfo', 'component_function', 'readonly', 'MyReadonly', 'fugitive', 'MyFugitive', 'separator', 'left', 'right', 'subseparator', 'colorscheme', 'wombat', 'Tabline', 'tabline', 'tabber#TabLine(', 'g:bufferline_echo', 'autocmd', 'VimEnter', '&statusline', 'bufferline#refresh_status(', 'bufferline#get_status_string(', 'g:airline#extensions#bufferline#enabled', 'Tmuxline', 'Promptline', 'g:promptline_theme', 'airline', 'g:promptline_preset', 'powerlineclone', 'full', 'g:airline_theme', 'powerlineish', 'luna', 'g:airline_powerline_fonts', 'g:tmuxline_preset', 'powerline', 'g:tmuxline_theme', 'promptline#slices#host(', '$USER', 'promptline#slices#cwd(', 'promptline#slices#vcs_branch(', 'warn', 'promptline#slices#last_exit_code(', 'WriteAirlineSnapshotFunc(', 'l:basePath', 'environment', 'execute', 'TmuxlineSnapshot!', 'PromptlineSnapshot!', 'augroup', 'WriteAirlineSnapshot', 'VimLeave', 'settings', 'autoindent', 'softtabstop', 'tabstop', 'shiftwidth', 'expandtab', 'smartindent', 'foldmethod', 'marker', 'g:indent_guides_auto_colors', 'Colorscheme', 'IndentGuidesOdd', 'ctermbg', 'black', 'IndentGuidesEven', 'darkgrey', 'g:indent_guides_enable_on_vim_startup', 'g:indent_guides_guide_size', 'g:indent_guides_start_level', 'text', 'encoding', 'fileencodings', '-bom', '-jp-3', 'eucjp', '-jisx0213', 'sjis', 'cp932', 'fileencoding', 'search', 'ignorecase', 'view', 'nowrap', 'gvim', 'guifont', 'MeiryoKe_Gothic', 'guioptions', 'aegit', 'additional', 'clipboard', 'unnamed', 'unnamedplus', 'splitright', 'code', 'reference', 'iunmap', '<C-i>', 'imap', '<C-x>', 'g:neocomplete#skip_auto_completion_time', 'g:neocomplete#enable_at_startup', 'disable', 'include', 'path', 'neocomplete#custom#source(', 'disabled_filetypes', 'g:neocomplete#auto_completion_start_length', 'g:neocomplete#sources#buffer#cache_limit_size', 'g:neocomplete#data_directory', 'cache', 'neocompl', 'g:neocomplete#min_keyword_length', 'g:neocomplete#sources#syntax#min_keyword_length', 'g:neocomplete#enable_smart_case', 'g:neocomplete#enable_fuzzy_completion', 'completeopt', 'preview', 'longest', 'menu', 'g:neocomplete#enable_refresh_always', 'g:ycm_global_ycm_extra_conf', 'ycm_extra_conf', 'g:ycm_seed_identifiers_with_syntax', 'g:ycm_confirm_extra_conf', 'g:ycm_autoclose_preview_window_after_insertion', 'g:ycm_collect_identifiers_from_tag_files', 'autocmd!', 'User', 'has(', 'vim_starting', 'youcompleteme#Enable(', 'YcmCompleter', 'GoToImprecise', '<CR>', '<F3>', 'GtagsCursor', 'Gtags', '<C-D>', 'Cmapkeys', 'Cfile', 'Cstart', '-mod', 'GhcModCheck', 'replace', 'default', 'mapped', 'keys', 'refactor', 'g:hlintRefactor#disableDefaultKeybindings', 'ApplyOneSuggestion(', 'ApplyAllSuggestions(', 'ghcmodcheck', 'BufWritePost', '<buffer>', 'exists(', 'GhcModCheckAsync', 'Window', 'commands', 'wincmd', '<C-t>', 'tabnext', 'tabprevious', 'tabnew', 'tabclose', 'MiniBufExplorer', '<C-Tab>', 'MBEbn', '<C-S-Tab>', 'MBEbp', '<C-j>', '<C-k>', 'Unmap', 'Close', 'without', 'saving', 'nnoremap', '<Nop>', 'Enter', 'mode', 'scrolling', '<C-f>', '<C-b>', '<Space>', '<S-Space>', 'remapping', 'undo', 'nmap', '<C-r>', 'darkblue2', 'Filetype', 'Mapping', 'BufRead', 'BufNewFile', 'gradle', 'groovy', 'Additional', 'Syntax', 'htmlLiveScript', 'region', 'htmlLsCustom', 'start', '<script', 'type', 'keepend', 'script', 'contains', 'Haskell', 'g:necoghc_enable_detailed_browse', 'g:haskellmode_completion_ghc', 'FileType', 'setlocal', 'omnifunc', 'necoghc#omnifunc', 'NeoCompleteAutoCompletionLength', 'g:ycm_semantic_triggers', 'quick', '-run', 'g:quickrun_config', 'javascript', 'command', 'node', 'buffer', 'split', 'vertical', 'name', 'quickrun', 'outputter', 'livescript', '-cbp', 'tempfile', 'tempname(', '-std=', '-lstdc', 'clang', 'coffee', 'hastec', 'haskelmode', 'g:haddock_browser', 'LiveScript(', 'join(', 'a:000', 'silent', 'CoffeeMake!', 'cwindow', 'redraw!', 'Save', 'LiveScriptMake!', 'fcitx', 'Switching', 'g:fcitx_enabled', 'Fcitx_refresh_status(', 'cmd_status', '-remote', 'system(', 'Fcitx_switch(', 'do_enable', 'cmd_enable', 'cmd_disable', 'cmd_current', 'a:do_enable', 'else', 'InsertLeave', 'InsertEnter', 'remove', 'delay', 'escape', 'timeout', 'timeoutlen', 'ttimeoutlen', 'Layout', 'WinCmdSingle(', 'a:str', 'WinCmdList(', 'strw', 'listw', 'while(', 'len(', 'a:strw', 'add(', 'endwhile', 'map(', 'v:val', 'StartupLayoutWithConqueTerm(', 'leftpane', 'bottompane', 'stopinsert', 'Quicktask', 'NERDTree', 'MainBuffer', 'ConqueTerm', 'hjjJ', 'resize', 'a:bottompane', 'winfixheight', 'startinsert', 'MiniBufExpl', 'this', 'moved', 'initialization', 'move', 'a:leftpane', 'winfixwidth', 'main', 'StartupLayout(', 'ConqueTermSplit', 'bash', 'QuicktaskStartUp(', 'check', 'Buffers', 's:bufs_before', 's:bufs_others', 'CreateList(', 'length', 'while', 'a:length', 'GetBufferList(', 'filter(', 'bufnr(', 'bufexists(', 'GetExcludeList(', 'copy(', 'a:src', 'match(', 'a:sub', 's:bufs_registered', 'CheckBuffers(', 'ListMainBuffers(', 'qall', 'listed', 'buflisted(', 'GetLastBuffer(', 'RegisterSubBuffers(', 'RegisterLatestBuffer(', 'BufUnload', 'QuickTask', 's:quicktask_filename', 'quicktask', 'g:quicktask_autosave', 'QuicktaskOpen(', 'execute(', 'function', 'CodeForces', 'g:CodeForcesCount', 'g:CodeForcesContestId', 'g:CodeForcesUpdateInterval', 'count', 'displayed', 'submissions', 'g:CodeForcesCountOfSubmits', 'g:CodeForcesShowUnofficial', 'g:CodeForcesFriends', 'g:CodeForcesCommandStandings', 'badd', 'g:CodeForcesCommandLoadTask', 'g:CodeForcesCommandSubmission', 'index', 'format:', 'directory', 'problem', 'input', 'output', 'where', 'smthng', 'files', 'contest', 'format', 'second', 'one:', 'g:CodeForcesContestFormat', 'smthngelse', 'filename', 'sample', '-input', 'g:CodeForcesInput', 'sampleInput', '-output', 'g:CodeForcesOutput', 'sampleOutput', 'user', 'my_output', 'g:CodeForcesUserOutput', 'myCorrectOutput', 'template', 'copy', 'with', 'samples', 'statement:', 'g:CodeForcesTemplate', 'templ', 'g:CodeForcesLang', 'Misc', 'vimrc_credentials'}