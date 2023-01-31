# nvim

This is my nvim setup. Almost everything here was taken from <https://github.com/ThePrimeagen/init.lua>
Here is a link to the video he did <https://youtu.be/w7i4amO_zaE>.

## Getting Started

### Installing Neovim

You can install Neovim with the package manager. However, those tend to be behind.
I recomend installing the latest version with the following.

```shell
curl -OL https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
sudo dpkg -i nvim-linux64.deb
python3 -m pip install pynvi
python3 -m pip install neovim
```

### Dependancies

- packer
```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

- ripgrep
```shell
sudo apt update
sudo apt install -y ripgrep
```

- gcc

- g++

- clang

- npm

```shell
sudo apt update
curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
sudo apt-get install -y nodejs npm
```

You will need ripgrep installed for fuzzy finding and other searches.
LSP will need gcc, clang, and g++ to compile.
You will also need npm to install most LSP language packs.

vim vertical movement https://youtu.be/KfENDDEpCsI
vim horizontal movement https://youtu.be/5JGVtttuDQA
vim intro https://youtu.be/X6AR2RMB5tE

vim advanced motion 2 https://youtu.be/uL9oOZStezw
vim advanced motion 1 https://youtu.be/qZO9A5F6BZs

To a line highlight the block with ctl-v and press =

lct lets you cut

add plugin  configure in  after

to replace all instance of a string on a line
wV:s/string/nstring/g

use mason to search for language servers to add `i` to install

Install plug packages

```shell
nvim --headless +PackerSync +qa
```
