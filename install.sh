#!/bin/bash
#
#  install.sh
#  
#  Copyright 2015  <Daniel Grimshaw>
#  
#  Automatic installer for the bcm-2708 cross compiler
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.

# Move the archive to $HOME
cp arm-none-eabi.tar.bz2 $HOME

cd $HOME

# Unzip the archive
# This may take a while, it is 101 MiB
tar xjvf arm-none-eabi.tar.bz2

# Update the path to include the archive binaries
export PATH=$PATH:$HOME/arm-2008q3/bin

# Make it so that we will not have to manually execute previous command with each new terminal
echo "export PATH=$PATH:$HOME/arm-2008q3/bin" >> .bashrc

# Remove archive file from home
rm $HOME/arm-none-eabi.tar.bz2
