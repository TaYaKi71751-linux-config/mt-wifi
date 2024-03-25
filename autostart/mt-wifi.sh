#!/bin/bash

sudo bash << EOF
echo "[Desktop Entry]" > /home/${USER}/.config/autostart/mt-wifi.desktop
echo "Exec=bash /home/${USER}/.local/mt-wifi" >> /home/${USER}/.config/autostart/mt-wifi.desktop
echo "Icon=application-x-shellscript" >> /home/${USER}/.config/autostart/mt-wifi.desktop
echo "Name=mt-wifi" >> /home/${USER}/.config/autostart/mt-wifi.desktop
echo "Type=Application" >> /home/${USER}/.config/autostart/mt-wifi.desktop
echo "X-KDE-AutostartScript=true" >> /home/${USER}/.config/autostart/mt-wifi.desktop

