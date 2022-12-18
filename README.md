# nvchad_config

# Dap configuration

Run `./dap_setup.sh`

or manualy:

```sh
# Javascript Node
mkdir -p ~/dev/microsoft
git clone https://github.com/microsoft/vscode-node-debug2.git ~/dev/microsoft/vscode-node-debug2
cd ~/dev/microsoft/vscode-node-debug2
npm install
NODE_OPTIONS=--no-experimental-fetch npm run build
```

```sh
# Javascript Chrome debugger
mkdir -p ~/dev/microsoft
git clone https://github.com/Microsoft/vscode-chrome-debug ~/dev/microsoft/vscode-chrome-debug
cd ~/dev/microsoft/vscode-chrome-debug
npm install
npm run build
```

```sh
# PHP debugger
git clone https://github.com/xdebug/vscode-php-debug.git
cd vscode-php-debug
npm install && npm run build
```
