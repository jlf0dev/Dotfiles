# Journal for installation of Ubuntu Gnome 17.04 on Inspiron 7537

## Troubleshooting
Problem: Battery not recognized on Gnome until brightness button pressed or charger plugged in  
Solution: Updated BIOS to A14 through windows (Dell site download) -> Added 'GRUB_CMDLINE_LINUX_DEFAULT="quiet splash acpi_osi=Linux acpi_rev_override"' to /etc/default/grub and ran sudo update-grub

Problem: pylint not recognizing virtualenv packages that were locally installed  
Solution: Went into /usr/bin/pylint and replaced the shebang from #!/usr/bin/python to #!/usr/bin/env python

Problem: Iphone connected but couldn't load music, cannot get itunes on linux  
Solution: https://askubuntu.com/questions/812006/how-can-i-mount-my-iphone-6s-on-ubuntu-16-04

## Tweak Tool
### Appearance
* GTK+: Arc-Darker
* Icons: Paper
* Cursor: Adwaita
* Shell Theme: Arc-Dark
### Extensions
* AlternateTab
* Clipboard Indicator
* Dynamic Top Bar
* User Themes
* Workspace Navigator
### Fonts
* Window Titles: Cantarell Bold 11
* Interface: Cantarell Regular 11
* Documents: Sans Regular 11
* Monospace: Ubuntu Mono Regular 13
* Hnting: Slight
* Antialiasing: Rgba
* Scaling Factor: 1.00

