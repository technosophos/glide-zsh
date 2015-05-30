# Glide ZSH Plugin

This project contains ZSH scripts for
[glide](https://github.com/Masterminds/glide). They are designed with
[Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) in mind, but will work
with any ZSH.

## Installation/Usage

If you are using Oh My Zsh:

```
$ cd ~/.oh-my-zsh/custom/plugins
$ git clone https://github.com/technosophos/glide-zsh glide
```

The activate the plugin in your `~/.zshrc` file:

```
plugins=(git brew glide)
```

The next time you start a shell, the Glide ZSH plugin will be active.

## Features

You do not neet `glide in` if you use this plugin. The plugin will
automatically detect whether you're in a glide project, and it will
adjust the GOPATH accordingly.

### Still TODO

- Autocomplete of Glide commands.

## LICENSE

This code is licensed under the MIT license.
