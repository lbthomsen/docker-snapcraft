#!/bin/bash

id -u $USERNAME &>/dev/null || useradd -u $USERID -s "/bin/bash" $USERNAME

usermod -G sudo $USERNAME || true

su - $USERNAME

# vim: ts=4 et nowrap autoindent
