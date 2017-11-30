#!/bin/bash

groupadd -g $GROUPID $USERNAME

id -u $USERNAME &>/dev/null || useradd -u $USERID -g $USERNAME -s "/bin/bash" $USERNAME

usermod -G sudo $USERNAME || true

#su - $USERNAME
#exec /bin/bash

export LC_ALL=C.UTF-8
export LANG=C.UTF-8

cd work

ls -la /root/.cache

sudo --user=$USERNAME snapcraft "$@"

# vim: ts=4 et nowrap autoindent
