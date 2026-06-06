source $HOME/.dotfiles/.aliases
source $HOME/.dotfiles/.gitaliases
source $HOME/.dotfiles/.functions

eval "$(rbenv init - zsh)"

bindkey -e

autoload -U compinit && compinit
autoload -Uz vcs_info

precmd() { vcs_info }

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':vcs_info:git:*' formats '%F{green}(%b%)%f'

HISTSIZE=50000
HISTFILE=$HOME/.zsh_history
SAVEHIST=50000
HISTDUP=erase

setopt auto_cd
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='🤖 %~ ${vcs_info_msg_0_}
➤➤ '
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end
