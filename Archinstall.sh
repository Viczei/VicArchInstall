#!/bin/bash

ln -s /usr/share/zoneinfo/Europe/Paris /etc/localtime

#pacman config
/bin/cat << EOM > /etc/pacman.conf
#
# /etc/pacman.conf
#
# See the pacman.conf(5) manpage for option and repository directives

#
# GENERAL OPTIONS
#
[options]
# The following paths are commented out with their default values listed.
# If you wish to use different paths, uncomment and update the paths.
#RootDir     = /
#DBPath      = /var/lib/pacman/
#CacheDir    = /var/cache/pacman/pkg/
#LogFile     = /var/log/pacman.log
#GPGDir      = /etc/pacman.d/gnupg/
HoldPkg     = pacman glibc
#XferCommand = /usr/bin/curl -C - -f %u > %o
#XferCommand = /usr/bin/wget --passive-ftp -c -O %o %u
#CleanMethod = KeepInstalled
#UseDelta    = 0.7
Architecture = auto

# Pacman won't upgrade packages listed in IgnorePkg and members of IgnoreGroup
#IgnorePkg   =
#IgnoreGroup =

#NoUpgrade   =
#NoExtract   =

# Misc options
#UseSyslog
#Color
#TotalDownload
CheckSpace
#VerbosePkgLists

# By default, pacman accepts packages signed by keys that its local keyring
# trusts (see pacman-key and its man page), as well as unsigned packages.
SigLevel    = Required DatabaseOptional
LocalFileSigLevel = Optional
#RemoteFileSigLevel = Required

# NOTE: You must run `pacman-key --init` before first using pacman; the local
# keyring can then be populated with the keys of all official Arch Linux
# packagers with `pacman-key --populate archlinux`.

#
# REPOSITORIES
#   - can be defined here or included from another file
#   - pacman will search repositories in the order defined here
#   - local/custom mirrors can be added here or in separate files
#   - repositories listed first will take precedence when packages
#     have identical names, regardless of version number
#   - URLs will have $repo replaced by the name of the current repo
#   - URLs will have $arch replaced by the name of the architecture
#
# Repository entries are of the format:
#       [repo-name]
#       Server = ServerName
#       Include = IncludePath
#
# The header [repo-name] is crucial - it must be present and
# uncommented to enable the repo.
#

# The testing repositories are disabled by default. To enable, uncomment the
# repo name header and Include lines. You can add preferred servers immediately
# after the header, and they will be used before the default mirrors.

#[testing]
#Include = /etc/pacman.d/mirrorlist

[core]
Include = /etc/pacman.d/mirrorlist

[extra]
Include = /etc/pacman.d/mirrorlist

#[community-testing]
#Include = /etc/pacman.d/mirrorlist

[community]
Include = /etc/pacman.d/mirrorlist

# If you want to run 32 bit applications on your x86_64 system,
# enable the multilib repositories as required here.

#[multilib-testing]
#Include = /etc/pacman.d/mirrorlist

[multilib]
Include = /etc/pacman.d/mirrorlist

# An example of a custom package repository.  See the pacman manpage for
# tips on creating your own repositories.
#[custom]
#SigLevel = Optional TrustAll
#Server = file:///home/custompkgs
#
# /etc/pacman.conf
#
# See the pacman.conf(5) manpage for option and repository directives

#
# GENERAL OPTIONS
#
[options]
# The following paths are commented out with their default values listed.
# If you wish to use different paths, uncomment and update the paths.
#RootDir     = /
#DBPath      = /var/lib/pacman/
#CacheDir    = /var/cache/pacman/pkg/
#LogFile     = /var/log/pacman.log
#GPGDir      = /etc/pacman.d/gnupg/
HoldPkg     = pacman glibc
#XferCommand = /usr/bin/curl -C - -f %u > %o
#XferCommand = /usr/bin/wget --passive-ftp -c -O %o %u
#CleanMethod = KeepInstalled
#UseDelta    = 0.7
Architecture = auto

# Pacman won't upgrade packages listed in IgnorePkg and members of IgnoreGroup
#IgnorePkg   =
#IgnoreGroup =

#NoUpgrade   =
#NoExtract   =

# Misc options
#UseSyslog
#Color
#TotalDownload
CheckSpace
#VerbosePkgLists

# By default, pacman accepts packages signed by keys that its local keyring
# trusts (see pacman-key and its man page), as well as unsigned packages.
SigLevel    = Required DatabaseOptional
LocalFileSigLevel = Optional
#RemoteFileSigLevel = Required

# NOTE: You must run `pacman-key --init` before first using pacman; the local
# keyring can then be populated with the keys of all official Arch Linux
# packagers with `pacman-key --populate archlinux`.

#
# REPOSITORIES
#   - can be defined here or included from another file
#   - pacman will search repositories in the order defined here
#   - local/custom mirrors can be added here or in separate files
#   - repositories listed first will take precedence when packages
#     have identical names, regardless of version number
#   - URLs will have $repo replaced by the name of the current repo
#   - URLs will have $arch replaced by the name of the architecture
#
# Repository entries are of the format:
#       [repo-name]
#       Server = ServerName
#       Include = IncludePath
#
# The header [repo-name] is crucial - it must be present and
# uncommented to enable the repo.
#

# The testing repositories are disabled by default. To enable, uncomment the
# repo name header and Include lines. You can add preferred servers immediately
# after the header, and they will be used before the default mirrors.

#[testing]
#Include = /etc/pacman.d/mirrorlist

[core]
Include = /etc/pacman.d/mirrorlist

[extra]
Include = /etc/pacman.d/mirrorlist

#[community-testing]
#Include = /etc/pacman.d/mirrorlist

[community]
Include = /etc/pacman.d/mirrorlist

# If you want to run 32 bit applications on your x86_64 system,
# enable the multilib repositories as required here.

#[multilib-testing]
#Include = /etc/pacman.d/mirrorlist

[multilib]
Include = /etc/pacman.d/mirrorlist

# An example of a custom package repository.  See the pacman manpage for
# tips on creating your own repositories.
#[custom]
#SigLevel = Optional TrustAll
#Server = file:///home/custompkgs
EOM



# Pacman Download packages
pacman -Sy sudo wget xorg-server xorg-xinit xorg-server-utils nvidia nvidia-utils nvidia-libgl xterm gedit openbox tilda firefox flashplugin skype blender gimp mypaint inkscape feh emacs alsa-utils alsa-oss wine giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls lcms2 lib32-lcms2 libxml2 lib32-libxml2 mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo libxcomposite lib32-libxcomposite libxinerama lib32-libxinerama ncurses lib32-ncurses libcl lib32-libcl libxslt lib32-libxslt

# Root
passwd

# User vic
useradd -m -g users -G wheel,storage,power -s /bin/bash vic
passwd vic

# network connection
systemctl enable dhcpcd

# automatic connection
mkdir getty@tty1.service.d && /bin/cat << EOM > getty@tty1.service.d/autologin.conf
[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin vic --noclear %I 38400 linux
EOM

wget -nd -r -P /home/vic/WallPaper -A jpeg,jpg,bmp,gif,png http://cdn.wonderfulengineering.com/wp-content/uploads/2014/04/space-wallpapers-1.jpg

# tilda configuration
/bin/cat << EOM > /home/vic/.config/tilda/config_0
tilda_config_version = "1.1.12"
image = "/home/vic/WallPaper/space-wallpapers-1.jpg"
# command = ""
font = "Monospace 11"
key = "F1"
addtab_key = "<Shift><Control>t"
fullscreen_key = "F11"
closetab_key = "<Shift><Control>w"
nexttab_key = "<Control>Page_Down"
prevtab_key = "<Control>Page_Up"
movetableft_key = "<Shift><Control>Page_Up"
movetabright_key = "<Shift><Control>Page_Down"
gototab_1_key = "<Alt>1"
gototab_2_key = "<Alt>2"
gototab_3_key = "<Alt>3"
gototab_4_key = "<Alt>4"
gototab_5_key = "<Alt>5"
gototab_6_key = "<Alt>6"
gototab_7_key = "<Alt>7"
gototab_8_key = "<Alt>8"
gototab_9_key = "<Alt>9"
gototab_10_key = "<Alt>0"
copy_key = "<Shift><Control>c"
paste_key = "<Shift><Control>v"
quit_key = "<Shift><Control>q"
title = "Tilda"
background_color = "white"
# working_dir = ""
web_browser = "x-www-browser"
word_chars = "-A-Za-z0-9,./?%&#:_"
lines = 100
max_width = 1918
max_height = 1080
min_width = 1
min_height = 1
transparency = 100
x_pos = 0
y_pos = 0
tab_pos = 0
backspace_key = 0
delete_key = 1
d_set_title = 3
command_exit = 2
scheme = 1
slide_sleep_usec = 20000
animation_orientation = 0
timer_resolution = 200
auto_hide_time = 2000
on_last_terminal_exit = 0
palette_scheme = 0
show_on_monitor_number = 0
palette = {11822, 13364, 13878, 52428, 0, 0, 20046, 39578, 1542, 50372, 41120, 0, 13364, 25957, 42148, 30069, 20560, 31611, 1542, 38944, 39578, 54227, 55255, 53199, 21845, 22359, 21331, 61423, 10537, 10537, 35466, 58082, 13364, 64764, 59881, 20303, 29298, 40863, 53199, 44461, 32639, 43176, 13364, 58082, 58082, 61166, 61166, 60652}
scrollbar_pos = 2
back_red = 0
back_green = 0
back_blue = 0
text_red = 0
text_green = 65535
text_blue = 0
scroll_background = true
scroll_on_output = false
notebook_border = false
antialias = true
scrollbar = false
use_image = false
grab_focus = true
above = false
notaskbar = true
bold = true
blinks = false
scroll_on_key = true
bell = false
run_command = false
pinned = true
animation = false
hidden = false
centered_horizontally = false
centered_vertically = false
enable_transparency = true
double_buffer = false
auto_hide_on_focus_lost = false
auto_hide_on_mouse_leave = false
EOM

# openbox configuration
/bin/cat << EOM > /etc/xdg/openbox/menu.xml
<?xml version="1.0" encoding="UTF-8"?>
<openbox_menu xmlns="http://openbox.org/3.4/menu">
<menu id="internet" label="Internet">
  <item label="Firefox">
    <action name="Execute">
      <command>firefox</command>
      <startupnotify>
        <enabled>yes</enabled>
        <wmclass>Firefox</wmclass>
      </startupnotify>
    </action>
  </item>
  <item label="Skype">
    <action name="Execute">
      <command>skype</command>
      <startupnotify>
        <enabled>yes</enabled>
      </startupnotify>
    </action>
  </item>
</menu>
<menu id="textEditor" label="Editors">
  <item label="GEdit">
    <action name="Execute">
      <command>gedit</command>
      <startupnotify>
        <enabled>yes</enabled>
      </startupnotify>
    </action>
  </item>
</menu>
<menu id="graphicTools" label="Graphics">
  <item label="Gimp">
    <action name="Execute">
      <command>gimp</command>
      <startupnotify>
        <enabled>yes</enabled>
      </startupnotify>
    </action>
  </item>
  <item label="MyPaint">
    <action name="Execute">
      <command>mypaint</command>
      <startupnotify>
        <enabled>yes</enabled>
      </startupnotify>
    </action>
  </item>
  <item label="Inkscape">
    <action name="Execute">
      <command>inkscape</command>
      <startupnotify>
        <enabled>yes</enabled>
      </startupnotify>
    </action>
  </item>
  <item label="Blender">
    <action name="Execute">
      <command>blender</command>
      <startupnotify>
        <enabled>yes</enabled>
      </startupnotify>
    </action>
  </item>
</menu>
<menu id="terminals" label="Terminals">
  <item label="Xterm">
    <action name="Execute"><command>xterm</command></action>
  </item>
</menu>
<menu id="root-menu" label="Openbox 3">
  <separator label="Applications" />
  <menu id="internet"/>
  <menu id="textEditor"/>
  <menu id="graphicTools"/>
  <menu id="terminals"/>
  <separator />
  <item label="Log Out">
    <action name="Exit">
      <prompt>yes</prompt>
    </action>
  </item>
</menu>
</openbox_menu>
EOM

# nano configuration
/bin/cat << EOM > /etc/xdg/openbox/menu.xml
## sudoers file.
##
## This file MUST be edited with the 'visudo' command as root.
## Failure to use 'visudo' may result in syntax or file permission errors
## that prevent sudo from running.
##
## See the sudoers man page for the details on how to write a sudoers file.
##

##
## Host alias specification
##
## Groups of machines. These may include host names (optionally with wildcards),
## IP addresses, network numbers or netgroups.
# Host_Alias	WEBSERVERS = www1, www2, www3

##
## User alias specification
##
## Groups of users.  These may consist of user names, uids, Unix groups,
## or netgroups.
# User_Alias	ADMINS = millert, dowdy, mikef

##
## Cmnd alias specification
##
## Groups of commands.  Often used to group related commands together.
# Cmnd_Alias	PROCESSES = /usr/bin/nice, /bin/kill, /usr/bin/renice, \
# 			    /usr/bin/pkill, /usr/bin/top

##
## Defaults specification
##
## You may wish to keep some of the following environment variables
## when running commands via sudo.
##
## Locale settings
# Defaults env_keep += "LANG LANGUAGE LINGUAS LC_* _XKB_CHARSET"
##
## Run X applications through sudo; HOME is used to find the
## .Xauthority file.  Note that other programs use HOME to find   
## configuration files and this may lead to privilege escalation!
# Defaults env_keep += "HOME"
##
## X11 resource path settings
# Defaults env_keep += "XAPPLRESDIR XFILESEARCHPATH XUSERFILESEARCHPATH"
##
## Desktop path settings
# Defaults env_keep += "QTDIR KDEDIR"
##
## Allow sudo-run commands to inherit the callers' ConsoleKit session
# Defaults env_keep += "XDG_SESSION_COOKIE"
##
## Uncomment to enable special input methods.  Care should be taken as
## this may allow users to subvert the command being run via sudo.
# Defaults env_keep += "XMODIFIERS GTK_IM_MODULE QT_IM_MODULE QT_IM_SWITCHER"
##
## Uncomment to enable logging of a command's output, except for
## sudoreplay and reboot.  Use sudoreplay to play back logged sessions.
# Defaults log_output
# Defaults!/usr/bin/sudoreplay !log_output
# Defaults!/usr/local/bin/sudoreplay !log_output
# Defaults!/sbin/reboot !log_output

##
## Runas alias specification
##

##
## User privilege specification
##
root ALL=(ALL) ALL

## Uncomment to allow members of group wheel to execute any command
%wheel ALL=(ALL) ALL

## Same thing without a password
# %wheel ALL=(ALL) NOPASSWD: ALL

## Uncomment to allow members of group sudo to execute any command
# %sudo	ALL=(ALL) ALL

## Uncomment to allow any user to run sudo if they know the password
## of the user they are running the command as (root by default).
# Defaults targetpw  # Ask for the password of the target user
# ALL ALL=(ALL) ALL  # WARNING: only use this together with 'Defaults targetpw'

## Read drop-in files from /etc/sudoers.d
## (the '#' here does not indicate a comment)
#includedir /etc/sudoers.d
EOM

mkinitcpio -p linux

syslinux-install_update -iam
