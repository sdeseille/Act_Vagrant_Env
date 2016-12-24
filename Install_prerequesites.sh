echo " mon shell: $SHELL"
echo " mon user:  $USER"

echo "Installing coreutils..."
pkg install -y coreutils

echo "Installing gcc..."
pkg install -y gcc

echo "Installing git..."
pkg install -y git

echo "Adding fdesc entry in /etc/fstab because bash requires fdescfs(5) mounted on /dev/fd"
echo 'fdesc	/dev/fd		fdescfs		rw	0	0' >>/etc/fstab

echo "Mount fdesc set in fstab"
mount -t fdescfs fdesc /dev/fd

echo "Installing bash..."
pkg install -y bash

echo "Show current settings for user vagrant"
pw usershow -n vagrant

echo "Set Bash as default shell for vagrant user"
pw usermod -s /usr/local/bin/bash -n vagrant

echo "Show modified SHELL setting for vagrant user"
pw usershow -n vagrant
