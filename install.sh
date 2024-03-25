sudo cp ./sh/* /usr/lib/systemd/system-sleep/
# https://www.reddit.com/r/ManjaroLinux/comments/hw8dot/anybody_know_how_to_run_startup_scripts_as_root/
sudo cp ./service/* /etc/systemd/system/
sudo find ./service/ -name '*.service' -type f -exec bash -c "sudo systemctl enable $(echo {} | rev | cut -d '/' -f1 | rev) --now"  \;
cp ./sh.local/* ${HOME}/.local/
source ./autostartmt-wifi.sh
