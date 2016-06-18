Vim {Docker}
==========

Docker image: [codecorrupt/vim](https://hub.docker.com/r/codecorrupt/vim/)

This is my Dockerfile with Vim 7.4 installed and my favorite suite of core plugins. These plugins are installed using vim-plug and you're welcome to take the docerfile and use your own prefered vimrc.

1. [Sensible](https://github.com/tpope/vim-sensible)
2. [Vim airline](https://github.com/bling/vim-airline)
3. [CtrlP](https://github.com/kien/ctrlp.vim)
4. [NERDTree](https://github.com/scrooloose/nerdtree)

To run vim container:

    Add dvim to your path or copy to a file in your path (ie. /usr/local/bin)

Or copy the following funtion into your .bashrc
    
    dvim () {
        docker run --rm -it -v "$PWD:$PWD" -w "$PWD" codecorrupt/vim $@
    }
    
After that, you can simply run dvim the same way you would run vim.
    
    ie. dvim ~/.vimrc

Want to use your own plugs?
---------------------------

See [the code](https://github.com/CodeCorrupt/docker-vim), clone, and hack.


#### Notes for OS X

By default, he docker-machine, boot2docker vm only support sharing of the /Users/<user> directory
