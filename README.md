# neovim-configs
This repository is to save all the neovim configs that I have, or that I will have.

## Configuration reminder
---

1. Run `:PlugInstall` to get al the listed plugins.
2. Run `:checkhealth` to see if there is any dependencie that you need for plugins.
3. To get the initial `tree-sitter` configs, run: `TSInstall`. This command will install the parser languages that you define in the `ensure_installed` section of the `tree-sitter` configs.
	- Additionally, make sure to install 'c', 'help', 'lua' and 'vim' to avoid parse error on the vim configuration files.
	- You can add them in the `init.vim` file in the `tree-sitter` configs.
4. Install the language servers for `coc` running `CocInstall <language-server>` or configuring it on the `coc-settings.json` (open it using the `:CocConfig` command).
5. `undefined`
