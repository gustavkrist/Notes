set clipboard=unnamed
unmap <Space>
imap jk <Esc>
nmap j gj
vmap j gj
nmap k gk
vmap k gk
nmap $ g$
vmap $ g$
nmap ^ g^
vmap ^ g^
nmap 0 g0
vmap 0 g0
nmap H ^
vmap H ^
nmap L $
vmap L $
nmap Y y$

" Surround
exmap surround_wiki surround [[ ]]
exmap surround_double_quotes surround " "
exmap surround_single_quotes surround ' '
exmap surround_brackets surround ( )
exmap surround_square_brackets surround [ ]
exmap surround_curly_brackets surround { }
exmap surround_angle_brackets surround < >
exmap surround_bars surround | |
exmap surround_backticks surround ` `
exmap surround_stars surround * *
exmap surround_dollars surround $ $

vunmap S
vmap S" :surround_double_quotes
vmap S' :surround_single_quotes
vmap S' :surround_single_quotes
vmap Sb :surround_brackets
vmap S) :surround_brackets
vmap S] :surround_square_brackets
vmap S} :surround_curly_brackets
vmap S> :surround_angle_brackets
vmap S| :surround_bars
vmap S` :surround_backticks
vmap S* :surround_stars
vmap S$ :surround_dollars

" Emulate Folding https://vimhelp.org/fold.txt.html#fold-commands
exmap togglefold obcommand editor:toggle-fold
nmap zo :togglefold
nmap zc :togglefold
nmap za :togglefold

exmap unfoldall obcommand editor:unfold-all
nmap zR :unfoldall

exmap foldall obcommand editor:fold-all
nmap zM :foldall

" Leader mappings
" Toggle focus mode
exmap togglefocus obcommand obsidian-minimal-settings:toggle-minimal-focus-mode
nmap <Space>z :togglefocus
exmap togglefiletree obcommand app:toggle-left-sidebar
nmap <Space>e :togglefiletree
" Vertical/horizontal splits
exmap vsplit obcommand workspace:split-vertical
nmap <Space>v :vsplit
exmap hsplit obcommand workspace:split-horizontal
nmap <Space>h :hsplit
exmap togglesource obcommand editor:toggle-source
nmap <Space>s :togglesource

" Pane movement
exmap focusright obcommand editor:focus-right
nmap <C-l> :focusright
exmap focusleft obcommand editor:focus-left
nmap <C-h> :focusleft
exmap focustop obcommand editor:focus-top
nmap <C-k> :focustop
exmap focusbottom obcommand editor:focus-bottom
nmap <C-j> :focusbottom

" Commands
exmap q obcommand workspace:close

imap <C-h> <left>
imap <C-j> <down>
imap <C-k> <up>
imap <C-l> <right>
