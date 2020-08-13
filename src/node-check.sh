#!/bin/sh
if ! node --version; then
    nodebrew install-binary latest
    exit 0
else
    printf 'Nodejs is preinstalled! - Skipping!\n'
    exit 0
fi
