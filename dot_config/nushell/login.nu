$env.LANG = 'en_US.UTF-8'
$env.LC_ALL = 'en_US.UTF-8'
$env.EDITOR = helix
$env.SYSTEMD_TIMEDATED_NTP_SERVICES = chronyd.service:systemd-timesyncd.service

let current_tty = (tty)
if ($current_tty == '/dev/tty1') {exec Hyprland}
