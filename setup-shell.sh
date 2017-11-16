#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Files / dirs we want to symlink from webapp to this repo
TARGETS=(
    ".bashrc"
    ".bash_prompt"
    ".bash_profile"
    ".git-completion.bash"
    ".gitconfig"
    ".inputrc"
    ".vimrc"
)

# Loop through and create symlinks
for target in "${TARGETS[@]}"
do
    rm -f "${HOME}/${target}"
    ln -s "${DIR}/${target}" "${HOME}/${target}"
done
