" VimWiki
let g:n_search_paths = ['~/Seafile/logbook/Notes', '~/git/md_wiki']

" Vimwiki wiki
let my_notes = {}
let my_notes.path = g:n_search_paths[0]
let my_notes.path_html = '~/Seafile/logbook/Notes_html/'
let my_notes.template_path = '~/Seafile/logbook/templates/'
let my_notes.template_default = 'def_template'
let my_notes.template_ext = '.html'
let my_notes.auto_generate_links = 1
let my_notes.auto_generate_tags = 1
let my_notes.auto_diary_index = 1
let my_notes.auto_toc = 1
let my_notes.automatic_nested_syntaxes = 1
let my_notes.auto_tags = 1
let my_notes.ext = '.md'

" Markdown wiki (main)
let md_wiki = {}
let md_wiki.path = g:n_search_paths[1]
let md_wiki.auto_tags = 1
let md_wiki.auto_generate_tags = 1
let md_wiki.auto_generate_links = 1
let md_wiki.auto_diary_index = 1
let md_wiki.automatic_nested_syntaxes = 1
let md_wiki.auto_toc = 1
let md_wiki.syntax = 'markdown'
let md_wiki.index = 'home'
let md_wiki.ext = '.md'

let g:vimwiki_list = [md_wiki]
" make sure vimwiki doesn't own all .md files
let g:vimwiki_global_ext = 0
" use colors in header highlighting
let g:vimwiki_hl_headers = 1

let g:vimwiki_valid_html_tags = 'b,i,s,u,sub,sup,kbd,br,hr, pre, script'
