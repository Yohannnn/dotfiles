$env.config = {
  show_banner: false
  cursor_shape: {
    emacs: line
  }
  rm: {
    always_trash: true
  }
  shell_integration: {
    osc2: true
    osc7: true
    osc8: true
    osc9_9: false
    osc133: true
    osc633: true
    reset_application_mode: true
  }
}

use ~/.cache/starship/init.nu

source ~/.cache/carapace/init.nu

alias hx = helix
alias sudo = doas
alias core-ssh = ssh
alias ssh = kitten ssh
