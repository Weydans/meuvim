run: 
	sudo apt remove -y vim
	sudo apt purge -y vim
	rm -rf ~/.vim ~/.vimrc ~/.viminfo
	sudo apt install -y git vim nodejs ripgrep
	ls ~/.fzf || git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
	ls ~/.fzf || echo "if type rg &> /dev/null; then" >> ~/.bashrc
	ls ~/.fzf || echo "  export FZF_DEFAULT_COMMAND='rg --files'" >> ~/.bashrc
	ls ~/.fzf || echo "  export FZF_DEFAULT_OPTS='-m --height 50% --border'" >> ~/.bashrc
	ls ~/.fzf || echo "fi" >> ~/.bashrc
	mkdir -p ~/.vim/pack/plugins/start
	mkdir -p ~/.vim/pack/coc/start
	git clone https://github.com/ctrlpvim/ctrlp.vim ~/.vim/pack/plugins/start/ctrlp.vim
	git clone https://github.com/mattn/emmet-vim ~/.vim/pack/plugins/start/emmet-vim
	git clone https://github.com/preservim/nerdcommenter ~/.vim/pack/plugins/start/nerdcommenter
	git clone https://github.com/rafi/awesome-vim-colorschemes ~/.vim/pack/plugins/start/awesome-vim-colorschemes
	git clone https://github.com/sheerun/vim-polyglot ~/.vim/pack/plugins/start/vim-polyglot
	git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/plugins/start/nerdtree && vim -u NONE -c "helptags ~/.vim/pack/plugins/start/nerdtree/doc" -c q
	git clone https://github.com/ryanoasis/vim-devicons ~/.vim/pack/plugins/start/vim-devicons 
	git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/plugins/start/vim-airline
	git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/pack/plugins/start/vim-airline-themes
	git clone https://github.com/junegunn/fzf.vim ~/.vim/pack/plugins/start/fzf.vim
	cd ~/.vim/pack/coc/start &&	git clone --branch release https://github.com/neoclide/coc.nvim.git --depth=1 && vim -c "helptags coc.nvim/doc/ | q"
	ls ~/.fonts || mkdir ~/.fonts
	cp ~/meuvim/DroidSansMNerdFontMono-Regular.otf ~/.fonts/
	fc-cache	
	touch ~/.vimrc
	echo "syntax on" >> ~/.vimrc
	echo "set autoindent" >> ~/.vimrc
	echo "set smartindent" >> ~/.vimrc
	echo "set history=5000" >> ~/.vimrc
	echo "set number" >> ~/.vimrc
	echo "set cursorline" >> ~/.vimrc
	echo "set colorcolumn=100" >> ~/.vimrc
	echo "set mouse=a" >> ~/.vimrc
	echo "set shiftwidth=4" >> ~/.vimrc
	echo "set tabstop=4 softtabstop=4 expandtab foldmethod=indent" >> ~/.vimrc
	echo "set foldmethod=indent" >> ~/.vimrc
	echo "set foldlevel=99" >> ~/.vimrc
	echo "nnoremap <space> za" >> ~/.vimrc
	echo "set splitbelow" >> ~/.vimrc
	echo "set splitright" >> ~/.vimrc
	echo "set tws=14*0" >> ~/.vimrc
	echo "set background=dark" >> ~/.vimrc
	echo "colorscheme materialbox" >> ~/.vimrc
	echo "map <C-n> :NERDTreeToggle<cr>" >> ~/.vimrc
	echo "set encoding=utf8" >> ~/.vimrc
	echo "set guifont=*:h12" >> ~/.vimrc
	echo "set laststatus=2" >> ~/.vimrc
	echo "let g:airline#extensions#tabline#enabled = 1" >> ~/.vimrc
	echo "let g:airline_powerline_fonts = 1" >> ~/.vimrc
	echo "let g:airline_statusline_ontop=0" >> ~/.vimrc
	echo "let g:airline_theme='base16_twilight'" >> ~/.vimrc
	echo "let g:airline#extensions#tabline#formatter = 'default'" >> ~/.vimrc
	echo "nnoremap <M-Right> :bn<cr>" >> ~/.vimrc
	echo "nnoremap <M-Left> :bp<cr>" >> ~/.vimrc
	echo "nnoremap <c-x> :bp\|bd #<cr>" >> ~/.vimrc
	echo "filetype plugin on" >> ~/.vimrc
	echo "let g:NERDSpaceDelims = 1" >> ~/.vimrc
	echo "let g:NERDDefaultAlign = 'left'" >> ~/.vimrc
	echo "map cc <Plug>NERDCommenterInvert" >> ~/.vimrc
	echo "set rtp+=~/.fzf" >> ~/.vimrc
	echo "packadd! fzf.vim" >> ~/.vimrc
	echo "let $FZF_DEFAULT_COMMAND = 'rg -l \"\"'" >> ~/.vimrc
	echo "map <C-p> :Files<CR>" >> ~/.vimrc
	echo "map <C-b> :Buffers<CR>" >> ~/.vimrc
	echo "map <Leader><Leader> :Commands<CR>" >> ~/.vimrc
	echo "map <Leader>/ :execute 'Rg ' . input('Rg/')<CR>" >> ~/.vimrc
	echo "map <Leader>l :BLines<CR>" >> ~/.vimrc
	echo "map <Leader>gf :GF?<CR>" >> ~/.vimrc
	echo 'set encoding=utf-8' >> ~/.vimrc
	echo 'set nobackup' >> ~/.vimrc
	echo 'set nowritebackup' >> ~/.vimrc
	echo 'set updatetime=100' >> ~/.vimrc
	echo 'set signcolumn=yes' >> ~/.vimrc
	echo 'inoremap <silent><expr> <TAB>' >> ~/.vimrc
	echo '	  \ coc#pum#visible() ? coc#pum#next(1) :' >> ~/.vimrc
	echo '	  \ CheckBackspace() ? "\<Tab>" :' >> ~/.vimrc
	echo '	  \ coc#refresh()' >> ~/.vimrc
	echo 'inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"' >> ~/.vimrc
	echo 'inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()' >> ~/.vimrc
	echo '							  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"' >> ~/.vimrc
	echo 'function! CheckBackspace() abort' >> ~/.vimrc
	echo "  let col = col('.') - 1" >> ~/.vimrc
	echo "  return !col || getline('.')[col - 1]  =~# '\s'" >> ~/.vimrc
	echo 'endfunction' >> ~/.vimrc
	echo "if has('nvim')" >> ~/.vimrc
	echo '  inoremap <silent><expr> <c-space> coc#refresh()' >> ~/.vimrc
	echo 'else' >> ~/.vimrc
	echo '  inoremap <silent><expr> <c-@> coc#refresh()' >> ~/.vimrc
	echo 'endif' >> ~/.vimrc
	echo 'nmap <silent> [g <Plug>(coc-diagnostic-prev)' >> ~/.vimrc
	echo 'nmap <silent> ]g <Plug>(coc-diagnostic-next)' >> ~/.vimrc
	echo 'nmap <silent> gd <Plug>(coc-definition)' >> ~/.vimrc
	echo 'nmap <silent> gy <Plug>(coc-type-definition)' >> ~/.vimrc
	echo 'nmap <silent> gi <Plug>(coc-implementation)' >> ~/.vimrc
	echo 'nmap <silent> gr <Plug>(coc-references)' >> ~/.vimrc
	echo 'nnoremap <silent> K :call ShowDocumentation()<CR>' >> ~/.vimrc
	echo 'function! ShowDocumentation()' >> ~/.vimrc
	echo "  if CocAction('hasProvider', 'hover')" >> ~/.vimrc
	echo "	call CocActionAsync('doHover')" >> ~/.vimrc
	echo '  else' >> ~/.vimrc
	echo "	call feedkeys('K', 'in')" >> ~/.vimrc
	echo '  endif' >> ~/.vimrc
	echo 'endfunction' >> ~/.vimrc
	echo "autocmd CursorHold * silent call CocActionAsync('highlight')" >> ~/.vimrc
	echo 'nmap <leader>rn <Plug>(coc-rename)' >> ~/.vimrc
	echo 'xmap <leader>f  <Plug>(coc-format-selected)' >> ~/.vimrc
	echo 'nmap <leader>f  <Plug>(coc-format-selected)' >> ~/.vimrc
	echo 'augroup mygroup' >> ~/.vimrc
	echo '  autocmd!' >> ~/.vimrc
	echo "  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')" >> ~/.vimrc
	echo "  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')" >> ~/.vimrc
	echo 'augroup end' >> ~/.vimrc
	echo 'xmap <leader>a  <Plug>(coc-codeaction-selected)' >> ~/.vimrc
	echo 'nmap <leader>a  <Plug>(coc-codeaction-selected)' >> ~/.vimrc
	echo 'nmap <leader>ac  <Plug>(coc-codeaction-cursor)' >> ~/.vimrc
	echo 'nmap <leader>as  <Plug>(coc-codeaction-source)' >> ~/.vimrc
	echo 'nmap <leader>qf  <Plug>(coc-fix-current)' >> ~/.vimrc
	echo 'nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)' >> ~/.vimrc
	echo 'xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)' >> ~/.vimrc
	echo 'nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)' >> ~/.vimrc
	echo 'nmap <leader>cl  <Plug>(coc-codelens-action)' >> ~/.vimrc
	echo 'xmap if <Plug>(coc-funcobj-i)' >> ~/.vimrc
	echo 'omap if <Plug>(coc-funcobj-i)' >> ~/.vimrc
	echo 'xmap af <Plug>(coc-funcobj-a)' >> ~/.vimrc
	echo 'omap af <Plug>(coc-funcobj-a)' >> ~/.vimrc
	echo 'xmap ic <Plug>(coc-classobj-i)' >> ~/.vimrc
	echo 'omap ic <Plug>(coc-classobj-i)' >> ~/.vimrc
	echo 'xmap ac <Plug>(coc-classobj-a)' >> ~/.vimrc
	echo 'omap ac <Plug>(coc-classobj-a)' >> ~/.vimrc
	echo "if has('nvim-0.4.0') || has('patch-8.2.0750')" >> ~/.vimrc
	echo '  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"' >> ~/.vimrc
	echo '  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"' >> ~/.vimrc
	echo '  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"' >> ~/.vimrc
	echo '  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"' >> ~/.vimrc
	echo '  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"' >> ~/.vimrc
	echo '  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"' >> ~/.vimrc
	echo 'endif' >> ~/.vimrc
	echo 'nmap <silent> <C-s> <Plug>(coc-range-select)' >> ~/.vimrc
	echo 'xmap <silent> <C-s> <Plug>(coc-range-select)' >> ~/.vimrc
	echo "command! -nargs=0 Format :call CocActionAsync('format')" >> ~/.vimrc
	echo "command! -nargs=? Fold :call     CocAction('fold', <f-args>)" >> ~/.vimrc
	echo "command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')" >> ~/.vimrc
	echo "set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}" >> ~/.vimrc
	echo 'nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>' >> ~/.vimrc
	echo 'nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>' >> ~/.vimrc
	echo 'nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>' >> ~/.vimrc
	echo 'nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>' >> ~/.vimrc
	echo 'nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>' >> ~/.vimrc
	echo 'nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>' >> ~/.vimrc
	echo 'nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>' >> ~/.vimrc
	echo 'nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>' >> ~/.vimrc

# IMPORTANTE
# rodar os comandos abaixo no vim após a instalação
# 
# CocInstall coc-tsserver coc-phpls
# :packadd fzf
# :packadd fzf.vim
# :call fzf#install()

