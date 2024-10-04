#!/bin/bash

# Target file or directory to remove the 'schg' flag from
TARGET="/Applications/FortiClient.app"

# Check if the target exists
if [ -e "$TARGET" ]; then
    echo "Removing schg flag from $TARGET"
    # Remove the system immutable (schg) flag recursively
    sudo /usr/bin/chflags -R noschg "$TARGET"
    echo "Flag removed successfully."
else
    echo "$TARGET does not exist."
fi
