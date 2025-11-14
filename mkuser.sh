#!/bin/sh

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 username"
  exit 1
fi

USERNAME="$1"

useradd -m -G wheel -s /bin/bash "$USERNAME"
passwd "$USERNAME"
su - "$USERNAME" -c "xdg-user-dirs-update"

echo "done"
