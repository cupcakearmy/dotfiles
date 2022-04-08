# .files

Collection of dotfiles.

## Installation

```bash
git clone https://github.com/cupcakearmy/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install
```

## Encrypted files.

Files under `./secrets` are encrypted. To unlock the `git-crypt` must be installed.
Assuming we have the base64 version of the `key.txt` we can unlock the repo with the following commands:

```bash
base64 --decode key.txt > key
git-crypt unlock ./key
```
