#!/bin/bash

id -u $USERNAME &>/dev/null || useradd -u $USERID -s "/bin/bash" $USERNAME

#exec "su - $USERNAME"
#exec "/bin/bash"
exec su -c '/bin/bash' - $USERNAME

# vim: ts=4 et nowrap autoindent
