$env.LANG = 'en_US.UTF-8'
$env.LC_ALL = 'en_US.UTF-8'
$env.EDITOR = helix
$env.SUDO_EDITOR = helix
$env.SYSTEMD_TIMEDATED_NTP_SERVICES = chronyd.service:systemd-timesyncd.service
$env.DIFFPROG = delta

let current_tty = (tty)
if ($current_tty == '/dev/tty1') {exec Hyprland}
