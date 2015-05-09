#!/bin/bash

# Automatic installer for arm cross-compiler

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
