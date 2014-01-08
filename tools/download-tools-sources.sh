#!/bin/sh

# download-tools-sources.sh
#
# Copyright (c) 2012, 2013  Anthony Green
# 
# The above named program is free software; you can redistribute it
# and/or modify it under the terms of the GNU General Public License
# version 2 as published by the Free Software Foundation.
# 
# The above named program is distributed in the hope that it will be
# useful, but WITHOUT ANY WARRANTY; without even the implied warranty
# of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this work; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
# 02110-1301, USA.

# A basic script to download the upstream GNU toolchain sources.

# Some of the Ubuntu packages required to download and build:
# sudo apt-get install cvs libgmp-dev libmpfr-dev libmpc-dev device-tree-compiler

git clone git://git.qemu.org/qemu.git

svn checkout svn://gcc.gnu.org/svn/gcc/trunk gcc

git clone git://sourceware.org/git/binutils-gdb.git

cvs -z3 -d:pserver:anoncvs@sourceware.org:/cvs/src co \
    newlib \
    libgloss

git clone git://git.rtems.org/rtems.git
(cd rtems; ./bootstrap)

