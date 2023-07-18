# Dotfiles

That version of my dotfiles is mostly inspired by [andrew8088](https://github.com/andrew8088/dotfiles) 

[Here's a description of how this dotfiles work](https://shaky.sh/simple-dotfiles/).

## Install

```
git clone <this-repo>
cd <this-repo>
./scripts/bootstrap.sh
```

## Local ZSH Config

If there's customization you want ZSH to load on startup that is specific to 
this machine (stuff you don't want to commit into the repo), create `~/.env.sh`
and put it in there. It will be loaded near the top of `.zshrc`.

TODO: add karabiner and other...
