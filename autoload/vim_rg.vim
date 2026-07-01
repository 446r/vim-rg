vim9script

var default_config = {
    options: ["--vimgrep", "-uu"],
    command: "Rg"
}
var config = {}

def Exec(search_args: string)
    var old_grepprg = &grepprg
    var old_grepformat = &grepformat

    var rg_options = join(config.options, " ")
    &grepprg = $"rg {rg_options}"
    &grepformat = "%f:%l:%c:%m"
    try
        execute $"grep {search_args}"
    catch
    endtry

    &grepprg = old_grepprg
    &grepformat = old_grepformat
enddef

export def Setup(user_config: dict<any> = {})
  config = extendnew(default_config, user_config, 'force')
  execute $'command! -nargs=* -complete=dir {config.command} Exec(<q-args>)'
enddef

