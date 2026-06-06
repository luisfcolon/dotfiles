# dotfiles

This repo contains my personal macOS terminal setup — dotfiles, aliases, functions, and shell config built around **zsh**.

### MacOS Settings

This only needs to run once

```bash
bash $HOME/.dotfiles/.macos
```

## Prerequisites

The following tools and dependencies need to be installed for these dotfiles to work correctly.

### Core

- **zsh** — the default shell for this entire setup; all config files (`.zshrc`, `.zshenv`, `.zprofile`) target zsh specifically

### Package & Version Managers

- **Homebrew** — `brew` is on PATH via `/opt/homebrew/bin`; used by the `brewup` alias
- **rbenv** — Ruby version manager; initialized in `.zshrc`, bin added in `.zshenv`
- **pyenv** — Python version manager; initialized in `.zshrc`
- **nvm** — Node version manager; loaded in both `.zshrc` and `.zprofile`
- **tofuenv** — OpenTofu version manager; bin added in `.zprofile`
- **pnpm** — Node package manager; `$PNPM_HOME` configured in `.zshrc`

### Apps & Services

- **Redis** — `redis-server` is started as a daemon automatically in `.zprofile`
- **Postgres.app** — PostgreSQL installed via the Mac app; its `bin` is on PATH in `.zshenv`

### CLI Utilities (used in functions/aliases)

- **vim** — default editor (`$EDITOR`) and used in aliases, installed with brew, not the native mac version
- **git** — required by all git aliases and functions
- **coreutils** — used in `.functions`
- **gawk** — used by `git-log-pretty` in `.functions`
- **lsof** — used by `killport` in `.functions`
- **sha256sum** — used by `generate-password` in `.functions`
- **zip** — used by `zipf` in `.functions`
- **iconv** — used by `slugify` in `.functions`

### Auth Tokens (set in `.zshenv`)

- `BUNDLE_RUBYGEMS__PKG__GITHUB__COM` — GitHub PAT for private RubyGems
- `NODE_AUTH_TOKEN` — GitHub PAT for private npm packages
- `GITHUB_OAUTH_TOKEN` — GitHub PAT for general API/OAuth use
