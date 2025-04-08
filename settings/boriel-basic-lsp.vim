augroup vim_lsp_settings_boriel-basic-lsp_server
  au!
  LspRegisterServer {
      \ 'name': 'boriel-basic-lsp',
      \ 'cmd': {server_info->lsp_settings#get('boriel-basic-lsp', 'cmd', [lsp_settings#exec_path('boriel-basic-lsp')]+lsp_settings#get('boriel-basic-lsp', 'args', ['--stdio']))},
      \ 'root_uri':{server_info->lsp_settings#get('boriel-basic-lsp', 'root_uri', lsp_settings#root_uri('boriel-basic-lsp'))},
      \ 'initialization_options': lsp_settings#get('boriel-basic-lsp', 'initialization_options', {}),
      \ 'allowlist': lsp_settings#get('boriel-basic-lsp', 'allowlist', ['bas', 'zxbasic', 'borielbasic', 'basic']),
      \ 'blocklist': lsp_settings#get('boriel-basic-lsp', 'blocklist', []),
      \ 'config': lsp_settings#get('boriel-basic-lsp', 'config', lsp_settings#server_config('boriel-basic-lsp')),
      \ 'workspace_config': lsp_settings#get('boriel-basic-lsp', 'workspace_config', {}),
      \ 'semantic_highlight': lsp_settings#get('boriel-basic-lsp', 'semantic_highlight', {}),
      \ }
augroup END
