# VIM

## Configuracion vim

### Para utilizar vim-plug

> curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
>    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

And in your vimrc:

> call plug#begin()
> Plug 'tpope/vim-sensible'
>
> " On-demand loading
> Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
> call plug#end()

Y entrando a Vim, ejecutar

> :PlugInstall
