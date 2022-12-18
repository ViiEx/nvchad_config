#!/bin/bash

# Just wrapped up all the debuggers I need under one script to make it easy to install
# You can find more about this configuration in the dap.nvim github repo
# Link: https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation

bold=$(tput bold)
normal=$(tput sgr0)

echo -e "\e[1;31m${bold}Setting up Debuger for Javascript Node${normal}\e[0m"

mkdir -p "$HOME"/dev/microsoft
git clone https://github.com/microsoft/vscode-node-debug2.git "$HOME"/dev/microsoft/vscode-node-debug2
cd "$HOME"/dev/microsoft/vscode-node-debug2 || return
npm install
NODE_OPTIONS=--no-experimental-fetch npm run build

BACK_PID=$!
wait $BACK_PID
clear

cd "$HOME" || return

echo -e "\e[1;31m${bold}Setting up Debuger for Javascript Chrome${normal}\e[0m"

mkdir -p "$HOME"/dev/microsoft
git clone https://github.com/Microsoft/vscode-chrome-debug "$HOME"/dev/microsoft/vscode-chrome-debug
cd "$HOME"/dev/microsoft/vscode-chrome-debug || return
npm install
npm run build

BACK_PID=$!
wait $BACK_PID
clear

cd "$HOME" || return

echo -e "\e[1;31m${bold}Setting up Debuger for PHP${normal}\e[0m"
git clone https://github.com/xdebug/vscode-php-debug.git "$HOME"/dev/microsoft/vscode-php-debug
cd "$HOME"/dev/microsoft/vscode-php-debug || return
npm install && npm run build

BACK_PID=$!
wait $BACK_PID
clear

cd "$HOME" || return
