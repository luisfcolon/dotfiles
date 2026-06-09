source $HOME/.secrets
eval "$(/opt/homebrew/bin/brew shellenv)"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export GITHUB_HOSTNAME=github.com
export GOPATH="$HOME/go"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"
export CLICOLOR=1
export EDITOR=/opt/homebrew/bin/vim
export LANG="en_US.UTF-8";
export LC_ALL="en_US.UTF-8";
export PYTHONIOENCODING="UTF-8";
export PNPM_HOME="$HOME/Library/pnpm"

path=(
  $HOME/.local/bin
  $HOME/.rbenv/bin
  /Applications/Postgres.app/Contents/Versions/latest/bin
  $HOME/.tofuenv/bin
  $PNPM_HOME/bin
  $path
)
typeset -U path
