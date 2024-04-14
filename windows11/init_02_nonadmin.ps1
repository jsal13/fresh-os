# ---
# POWERSHELL NON-ADMIN
# For VSCode only, don't install if you don't use VSCode.
$apps = @(
    "DavidAnson.vscode-markdownlint",
    "aaron-bond.better-comments"
    "formulahendry.code-runner",
    "hashicorp.terraform",
    "ms-azuretools.vscode-docker",
    "ms-kubernetes-tools.vscode-kubernetes-tools",
    "ms-python.black-formatter",
    "ms-python.isort",
    "ms-python.python",
    "ms-python.mypy-type-checker",
    "ms-python.vscode-pylance",
    "ms-toolsai.jupyter",
    "ms-toolsai.jupyter-keymap",
    "ms-toolsai.jupyter-renderers",
    "ms-toolsai.vscode-jupyter-cell-tags",
    "ms-toolsai.vscode-jupyter-slideshow",
    "ms-vscode.powershell",
    "njpwerner.autodocstring",
    "redhat.vscode-yaml",
    "skellock.just",
    "tamasfe.even-better-toml",
    "usernamehw.errorlens"
    "Vue.volar",
    "Vue.vscode-typescript-vue-plugin",
    "Yummygum.city-lights-theme",
    "yzhang.markdown-all-in-one"
)

foreach ($app in $apps) {
    & code --install-extension "${app}"
}

# Copy settings in this folder to Code folder.
cp settings.json $env:APPDATA/Code/User