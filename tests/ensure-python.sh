#!/bin/sh -eu
# Make sure python and its libraries are present before Ansible is used

if which apt 2>/dev/null
then
    # Ubuntu has an awkward habit to drop Python
    which python || (sudo DEBIAN_FRONTEND=noninteractive apt-get -y update && sudo DEBIAN_FRONTEND=noninteractive apt-get -y install python-minimal)
fi

if which yum 2>/dev/null
then
    which python || yum install -y python
    if selinuxenabled
    then
      yum install -y libselinux-python
    fi
fi