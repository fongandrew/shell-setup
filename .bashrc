source ~/.bash_prompt

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if which rbenv > /dev/null;
  then eval "$(rbenv init -)";
fi
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
 
export NPM_PACKAGES="${HOME}/.npm-packages"
export YARN_PACKAGES="${HOME}/.yarn-packages"
export PATH="$YARN_PACKAGES/bin:$NPM_PACKAGES/bin:$PATH"
 
# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$YARN_PACKAGES/share/man:$NPM_PACKAGES/share/man:$(manpath)"
 
export PATH=$(python -c "import site, os; print(os.path.join(site.USER_BASE, 'bin'))"):$PATH
export PATH=$(python3 -c "import site, os; print(os.path.join(site.USER_BASE, 'bin'))"):$PATH
export PYTHONPATH=$(python -c "import site, os; print(os.path.join(site.USER_BASE, 'lib', 'python', 'site-packages'))"):$PYTHONPATH
export PYTHONPATH=$(python3 -c "import site, os; print(os.path.join(site.USER_BASE, 'lib', 'python', 'site-packages'))"):$PYTHONPATH
 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

