#!/bin/bash

extensions=(
42Crunch.vscode-openapi
akamud.vscode-theme-onedark
amandeepmittal.pug
cschleiden.vscode-github-actions
eamodio.gitlens
eg2.vscode-npm-script
formulahendry.auto-close-tag
formulahendry.auto-rename-tag
GitHub.vscode-pull-request-github
GitLab.gitlab-workflow
golang.go
Gruntfuggly.todo-tree
jdforsythe.add-new-line-to-files
medo64.render-crlf
mikestead.dotenv
ms-azuretools.vscode-docker
ms-dotnettools.csharp
PKief.material-icon-theme
redhat.vscode-yaml
samuelcolvin.jinjahtml
shardulm94.trailing-spaces
syler.sass-indented
Tyriar.sort-lines
vscoss.vscode-ansible
yzhang.markdown-all-in-one
)

for extension in "${extensions[@]}"
do
	code --install-extension $extension
done
