# Firejail profile for playonlinux
# Description: Front-end for Wine
# This file is overwritten after every install/update
# Persistent local customizations
include playonlinux.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.Steam
noblacklist ${HOME}/.local/share/Steam
noblacklist ${HOME}/.local/share/steam
noblacklist ${HOME}/.steam
noblacklist ${HOME}/.PlayOnLinux

# nc is needed to run playonlinux
noblacklist ${PATH}/nc

# Allow access to perl
noblacklist ${PATH}/cpan*
noblacklist ${PATH}/core_perl
noblacklist ${PATH}/perl
noblacklist /usr/lib/perl*
noblacklist /usr/share/perl*

include disable-common.inc
# playonlinux uses perl
include disable-devel.inc
include disable-interpreters.inc
include disable-programs.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
seccomp
