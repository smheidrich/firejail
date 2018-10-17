# Firejail profile for gnome-contacts
# Description: Contacts manager for GNOME
# This file is overwritten after every install/update
# Persistent local customizations
include gnome-contacts.local
# Persistent global definitions
include globals.local

noblacklist ${DOCUMENTS}

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-common.inc
include whitelist-var-common.inc

caps.drop all
netfilter
no3d
nodvd
nonewprivs
noroot
nosound
notv
novideo
protocol unix,inet,inet6,netlink
seccomp

disable-mnt
private-dev
private-tmp

noexec ${HOME}
noexec /tmp
