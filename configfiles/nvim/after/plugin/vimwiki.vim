augroup md_wiki
  autocmd!
  autocmd BufNewFile *md_wiki/diary/*.md :silent 0r !generate-vimwiki-diary-template '%'
  autocmd! BufRead *md_wiki/home.md :Git pull
  autocmd BufWritePost *md_wiki/* call RunGitCommands()
augroup END

" Add modified files, create a comma separated string with them and use them
" as a commit message.
function! RunGitCommands() abort
  let choice = confirm("Commit and push changes?", "&Yes\n&No\n&Cancel", 3)
  if choice == 2
    echo "Exiting without committing changes!"
    return
  elseif choice == 1
    exe 'Git add .'
    let staged_files = join(split(execute("Git status -s"), 'M  '), '')
    let files_str = join(split(staged_files, '\n'), ',')
    if empty(files_str) == 1
      echo "No modified files to commit."
      return
    endif
    exe "Git commit -m 'Update '" . files_str
    exe 'Git push'
    echom 'Changes commited and pushed for ' . files_str
  endif
endfunction
