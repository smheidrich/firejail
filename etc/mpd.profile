# Firejail profile for mpd
# Description: Music Player Daemon
# This file is overwritten after every install/update
# Persistent local customizations
include mpd.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/mpd
noblacklist ${HOME}/.mpd
noblacklist ${HOME}/.mpdconf
noblacklist ${MUSIC}

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

caps.drop all
netfilter
no3d
nodvd
nonewprivs
noroot
notv
novideo
protocol unix,inet,inet6
seccomp
shell none

#private-bin mpd,bash
private-cache
private-dev
private-tmp

noexec ${HOME}
noexec /tmp
