#! /usr/bin/env bash

# Set mouse sensitivity

# To find out which properties to set, run
# xinput --list --short
# look for your device ID (e.g. 18)
# and for the property code to set (e.g. 57775)
# change values below accordingly

xinput --set-prop 18 57775 1
