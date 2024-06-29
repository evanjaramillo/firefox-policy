#!/bin/bash

# simple script to install the policy

POLICY_INSTALL_DIR="/etc/firefox/policies"

# elevate to root
if [ "$EUID" -ne 0 ]; then
	exec sudo -s "$0" "$@"
fi


if [ ! -d $POLICY_INSTALL_DIR ]; then
	echo "Creating policy dir $POLICY_INSTALL_DIR"
	mkdir -p $POLICY_INSTALL_DIR
fi

cp policies.json $POLICY_INSTALL_DIR

sudo -k
