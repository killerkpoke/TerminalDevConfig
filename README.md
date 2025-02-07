# This is my minimalist Terminal based programming setup
Using [Wezterm](https://wezterm.org/index.html) for terminal and [Helix IDE](https://helix-editor.com) in the terminal.

## Wezterm config

## Helix Config
### Base config and theme
After installation, create a config.toml, like the following path:
<code>$ ~/.config/helix/config.toml</code>
And paste the code from this repo to the newely created config.toml file.


### Commands for installing LSPs 
- <code>npm i -g vscode-langservers-extracted</code>
- <code>npm install -g typescript typescript-language-server</code>
- <code>npm install -g @microsoft/compose-language-service</code>
- <code>npm i -g @vue/language-server</code>
- <code>npm i -g prettier</code>
- <code>npm i -g @tailwindcss/language-server</code>
- <code>npm i -g sql-language-server</code>
- <code>pip install -U 'python-lsp-server[all]'</code>
- <code>pip install pylsp-mypy</code>
- <code>go install golang.org/x/tools/gopls@latest</code>
- <code>go install github.com/go-delve/delve/cmd/dlv@latest</code>
- <code>go install golang.org/x/tools/cmd/goimports@latest</code>
- <code>go install github.com/nametake/golangci-lint-langserver@latest</code>
- <code>go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest</code>
