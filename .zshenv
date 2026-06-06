eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export BUNDLE_RUBYGEMS__PKG__GITHUB__COM="<:github_pat>"
export NODE_AUTH_TOKEN="<:github_pat>"
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export GITHUB_OAUTH_TOKEN="<:github_pat>"
export GITHUB_HOSTNAME=github.com
export GOPATH="$HOME/go"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"
export CLICOLOR=1
export EDITOR=/opt/homebrew/bin/vim
export LANG="en_US.UTF-8";
export LC_ALL="en_US.UTF-8";
export PYTHONIOENCODING="UTF-8";
export PATH="$HOME/.tofuenv/bin:$PATH"

# Remove duplicates from PATH
remove_dups() {
  local D=${2:-:} path= dir=
  while IFS= read -d$D dir; do
    [[ $path$D =~ .*$D$dir$D.* ]] || path+="$D$dir"
  done <<< "$1$D"
  printf %s "${path#$D}"
}

PATH=$(remove_dups "$PATH")

unset -f remove_dups
