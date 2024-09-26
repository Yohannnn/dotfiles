$env.LANG = 'en_US.UTF-8'
$env.LC_ALL = 'en_US.UTF-8'
$env.EDITOR = 'helix'
$env.DIFFPROOG = 'diff --color'
$env.XDG_DATA_DIRS += ':/home/yohan/.local/share/flatpak/exports/share'

let current_tty = (tty)
if ($current_tty == '/dev/tty1') {exec Hyprland}
