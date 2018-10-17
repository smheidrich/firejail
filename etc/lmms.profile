# Firejail profile for lmms
# Description: Linux Multimedia Studio
# This file is overwritten after every install/update
# Persistent local customizations
include lmms.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.lmmsrc.xml
noblacklist ${DOCUMENTS}
noblacklist ${MUSIC}

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

caps.drop all
ipc-namespace
net none
no3d
nodbus
nodvd
nogroups
nonewprivs
noroot
notv
novideo
protocol unix
seccomp
shell none

private-dev
private-tmp

noexec ${HOME}
noexec /tmp
