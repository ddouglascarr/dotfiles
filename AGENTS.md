# ddc dotfiles

These are my personal dotfiles. I'm setting up a new linux desktop system on 
Fedora, and will do all agent work within this repo. 


## Requirements

- needs to work on macos and linux, though some duplication fine
    - e.g. there is a personal_zshrc for my work macos, and a full bashrc for 
      my personal linux
- I'm using a fedora distribution on a vm in macos, a lot of the old linux 
  files in system are for debian, so I'm moving them across as needed
- most stuff is symlinked from where it's needed
    - e.g. bashrc is symlinked from `/.bashrc


## Key Directories

These are the key folders I'll be modifying.

- `config/nvim`: nvim config
- `docs`: random markdown docs, do not touch
- `system-setup`: scripts to setup a new system
- `tmux`: tmux config (unsued for a while)
- `bin`: personal shell scripts


## Rules

- you are talking to a VERY VERY senior developer
- be brief
- do not delete comments unless asked
- do not write comments unless asked
- reading git state is fine, but do not write to git; staging, committing, rebasing, and other index/history changes are done by me
- you MAY modify the system outside this repo, but ask first. 
