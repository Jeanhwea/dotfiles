" repeat
silent! call repeat#set('\<Plug>MyWonderfulMap', v:count)

" figitive
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
let g:fugitive_github_domains = ['https://code.csdn.net']

" utilsnips. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger       = '<C-J>'
let g:UltiSnipsJumpForwardTrigger  = '<C-J>'
let g:UltiSnipsJumpBackwardTrigger = '<C-K>'
let g:UltiSnipsEditSplit           = 'vertical'
let g:ultisnips_java_brace_style   = "nl"
let g:UltiSnipsSnippetDirectories  = ['bundle/vim-ultisnips-snippets']

" vim-markdown
let g:markdown_fenced_languages = ['java', 'html', 'javascript', 'css', 'cpp', 'viml=vim', 'bash=sh']

" signify
let g:signify_disable_by_default = 1
let g:signify_vcs_list = [ 'git' , 'hg' ]

" gundo
let g:gundo_help = 0

" auto-pairs
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" ctrlp
let g:ctrlp_map = '<C-P>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
if has('win32')||has('win64')
    set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
elseif has('unix')
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
endif
let g:ctrlp_custom_ignore = {
\   'dir':  '\v[\/]\.(git|hg|svn)$',
\   'file': '\v\.(exe|so|dll)$',
\   'link': '',
\}
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_mode_map = {
\   'mode': 'passive',
\   'active_filetypes': ['ruby', 'php', 'python'],
\   'passive_filetypes': []
\}
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

