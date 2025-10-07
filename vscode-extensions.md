# VS Code Extensions Configuration

This file tracks the installed VS Code extensions for this workspace. It's automatically updated on each commit.

**Last Updated:** 2025-10-07 15:25:06 UTC

## Installed Extensions

| Extension ID | Version | Description |
|--------------|---------|-------------|
| eamodio.gitlens | 17.5.1 | Gitlens |
| github.copilot-chat | 0.31.5 | Copilot Chat |
| github.copilot | 1.372.0 | Copilot |
| humao.rest-client | 0.25.1 | Rest Client |
| ms-python.autopep8 | 2025.2.0 | Autopep8 |
| ms-python.debugpy | 2025.10.0 | Debugpy |
| ms-python.python | 2025.14.0 | Python |
| ms-python.vscode-pylance | 2025.8.3 | Vscode Pylance |
| ms-python.vscode-python-envs | 1.8.0 | Vscode Python Envs |
| ms-vscode.hexeditor | 1.11.1 | Hexeditor |
| pkief.material-icon-theme | 5.27.0 | Material Icon Theme |
| shd101wyy.markdown-preview-enhanced | 0.8.19 | Markdown Preview Enhanced |
| streetsidesoftware.code-spell-checker | 4.2.6 | Code Spell Checker |
| usernamehw.errorlens | 3.26.0 | Errorlens |
| yzhang.markdown-all-in-one | 3.6.3 | Markdown All In One |

## Installation Commands

To install all these extensions on a new VS Code instance:

```bash
# Install all recommended extensions
code --install-extension eamodio.gitlens@17.5.1
code --install-extension github.copilot-chat@0.31.5
code --install-extension github.copilot@1.372.0
code --install-extension humao.rest-client@0.25.1
code --install-extension ms-python.autopep8@2025.2.0
code --install-extension ms-python.debugpy@2025.10.0
code --install-extension ms-python.python@2025.14.0
code --install-extension ms-python.vscode-pylance@2025.8.3
code --install-extension ms-python.vscode-python-envs@1.8.0
code --install-extension ms-vscode.hexeditor@1.11.1
code --install-extension pkief.material-icon-theme@5.27.0
code --install-extension shd101wyy.markdown-preview-enhanced@0.8.19
code --install-extension streetsidesoftware.code-spell-checker@4.2.6
code --install-extension usernamehw.errorlens@3.26.0
code --install-extension yzhang.markdown-all-in-one@3.6.3
```

Or install from the extensions.json file:
```bash
# Navigate to workspace root and install from recommendations
code --install-extension $(cat .vscode/extensions.json | jq -r '.recommendations[]')
```

## Usage Notes

- The `.vscode/extensions.json` file enables VS Code to recommend these extensions when opening this workspace
- This markdown file provides a human-readable list with versions and installation commands
- Both files are automatically updated before each commit via Git hooks
