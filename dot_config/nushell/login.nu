$env.LANG = 'en_US.UTF-8'
$env.LC_ALL = 'en_US.UTF-8'
let current_tty = (tty)
if ($current_tty == '/dev/tty1') {exec Hyprland}
