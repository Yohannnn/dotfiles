$env.config = {
  show_banner: false
  shell_integration: true
  cursor_shape: {
    emacs: line
  }
  rm: {
    always_trash: true
  }
}

use ~/.cache/starship/init.nu

use ~/.config/nushell/git-completions.nu *
use ~/.config/nushell/man-completions.nu *
source ~/.cache/carapace/init.nu

alias hx = helix
alias sudo = doas
alias kssh = kitten ssh
