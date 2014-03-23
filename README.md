This idea was stolen without shame from [Allison Kaptur](https://github.com/akaptur).

Clone this repo and add symlinks to these files in ~, i.e.:

    :::bash
    $ cd ~
    $ ln -s ~/path/to/dotfiles/bash_profile .bash_profile
    $ ln -s ~/path/to/dotfiles/bashrc .bashrc

Symlinks can be listed using

    :::bash
    $ cd ~
    $ ls -al

The `-a` is necessary because the symlinks are hidden, and the `-l` is necessary to show where the symlinks are pointing.