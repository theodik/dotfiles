" Leader shortcuts for Rails commands
map <Leader>m :Emodel 
map <Leader>c :Econtroller 
map <Leader>v :Eview 
map <Leader>h :Ehelper 
map <Leader>tm :Tmodel 
map <Leader>tmi :Tmigration 
map <Leader>tc :Tcontroller 
map <Leader>tv :Tview 
map <Leader>tu :Tunittest 
map <Leader>l :Rlocale 
map <Leader>g :find Gemfile<CR>

" Edit routes
command! Eroutes :e config/routes.rb
command! Troutes :tabe config/routes.rb

nnoremap <leader>rif :RConvertPostConditional<cr>

vmap <Leader>z :call I18nTranslateString()<CR>

" let g:vimrubocop_keymap = 0
" nmap <Leader>r :RuboCop<CR>

" let g:rspec_command = 'call SlimuxSendCommand("rspec {spec}")'
" " RSpec.vim mappings
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>
