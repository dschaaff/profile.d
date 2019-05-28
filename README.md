OS X profile.d
==============

About
-----
This is a working profile.d setup for __my__ OS X bash setup. I use it, but it might not work for you... I forked it from my friend Jonathan Gnagy because I'm lazy and I liked his setup. All credit to https://bitbucket.org/jgnagy/profile.d for the initial work here.

Installing
----------
Create a place to store your profile.d stuff. I use `$HOME/.dotfiles`. :

    mkdir $HOME/.dotfiles

Clone my repo:

    git clone https://github.com/dschaaff/dotfiles.git ~/.profile.d

There are a couple options for using this, but here is how I do it. Put this in your `$HOME/.profile` (which might not exist):

    # Include all the profile.d configs
    if [ -d $HOME/.profile.d ]; then
      for profile_include in `ls -1 $HOME/.dotfiles/profile.d/*.sh | sort`; do
        . $profile_include
      done
    fi

Open a new shell and test it out...

License
-------
This stuff is released under the [Simplified BSD license](http://en.wikipedia.org/wiki/BSD_licenses#2-clause_license_.28.22Simplified_BSD_License.22_or_.22FreeBSD_License.22.29).
