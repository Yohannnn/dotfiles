$env.config = {
  history: {
    file_format: "sqlite"
    isolation: true
  }
  show_banner: false
  cursor_shape: {
    emacs: line
  }
  rm: {
    always_trash: true
  }
}

def view_nu_config [] { config nu --doc | nu-highlight | bat }
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
$env.GOPATH = $'($env.HOME)/.go'

mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
