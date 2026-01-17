let carapace_completer = {|spans|
    carapace $spans.0 nushell ...$spans | from json
}

$env.config = {
  history: {
    file_format: "sqlite"
  }
  show_banner: false
  cursor_shape: {
    emacs: line
  }
  rm: {
    always_trash: true
  }
  completions: {
    external: {
      enable: true
        completer: $carapace_completer
        }
    }
}

alias core-sudo = sudo
alias sudo = doas
alias hx = helix
def view_nu_config [] { config nu --doc | nu-highlight | less -R }
def --env y [...args] {
	let tmp = (mktemp -t "yazi-cwd.XXXXXX")
	yazi ...$args --cwd-file $tmp
	let cwd = (open $tmp)
	if $cwd != "" and $cwd != $env.PWD {
		cd $cwd
	}
	rm -fp $tmp
}

$env.LS_COLORS = (vivid generate gruvbox-dark)
$env.DIFFPROOG = 'diff --color'
$env.EDITOR = 'hx'

mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
