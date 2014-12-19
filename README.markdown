~sids/
=======

“Home is where you can scratch where it itches.”

This repository is inspired by https://github.com/rtomayko/dotfiles It's not a
clone of that repository though. This is my very own home.

This repository includes some of the config files, scripts etc. I use and
depend on for my everyday life.

My primary platforms are Mac OS X and GNU/Linux (Debian/Ubuntu).

Installation
============

This is how I end up importing these settings into a fresh install of Max OS X:

    git init .
    git remote add -t \* -f origin https://github.com/sids/tilda-sids
    git checkout master

(From [StackOverflow](https://stackoverflow.com/questions/9864728/how-to-get-git-to-clone-into-current-directory/16811212#16811212))

LICENSE / COPYING
=================

There is a good amount of stuff here that I haven't written -- some I've copied
from friends and some from the internets. I do not claim any copyright over
those and cannot, in turn, grant permission to copy them. In most of these cases
though, I've tried to include a reference to where I got the code from. But I
might not have done so in every case; please let me know if you come across any
such cases.

There are some *vendor* files and directories that are part of this repository.
These are plugins/extensions/etc. that add to the functionality of the
application in question. For these, please refer to LICENSE/COPYING file that
might be present in these directories or the LICENSE/COPYING information that
might be present inside the files (I've not removed any such information).
