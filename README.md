SilverStripe VIM
====================================

A vim plugin for working with [SilverStripe](http://silverstripe.org/).

 - SilverStripe template syntax highlighting
 - SilverStripe template indentation
 - [Matchit](http://www.vim.org/scripts/script.php?script_id=39) support

## Installation

### Install for Pathogen

    cd ~/.vim/
    git clone git://github.com/phalkunz/vim-ss.git bundle/vim-ss

### Install for Vundle

Add `Plugin 'phalkunz/vim-ss'` to your `.vimrc` and do a `:PluginInstall`.

### Manually install

    git clone git://github.com/phalkunz/vim-ss.git vim-ss
    cp -R vim-ss/syntax/* ~/.vim/syntax/
    cp -R vim-ss/ftdetect/* ~/.vim/ftdetect/
    cp -R vim-ss/ftplugin/* ~/.vim/ftplugin/

## Future features

 - Jump between page and page controller
 - Jump between page (or page controller) and template

## Maintainers

 - [Saophalkun Ponlu](http://github.com/phalkunz)

## License

[Vim License](http://vimdoc.sourceforge.net/htmldoc/uganda.html). See `:help license`.
