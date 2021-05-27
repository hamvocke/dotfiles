#! /usr/bin/env bash

echo "Installing Visual Studio Code extensions"

for extension in $(cat extensions)
do
    echo "Installing: ${extension}"
    code --install-extension $extension
done
