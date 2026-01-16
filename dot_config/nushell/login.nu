let current_tty = (tty)
if ($current_tty == '/dev/tty1') {exec start-hyprland}

$env.PATH = ($env.PATH | split row (char esep) | append [$"($env.HOME)/.cargo/bin", $"($env.HOME)/.local/bin"])
$env.LANG = 'en_US.UTF-8'
$env.LC_ALL = 'en_US.UTF-8'
$env.XDG_DATA_DIRS = $"/var/lib/flatpak/exports/share:/usr/local/share/:/usr/share/:($env.HOME)/.local/share:($env.HOME)/.local/share/flatpak/exports/share"
