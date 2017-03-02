# VIM

## Configuracion vim

### Para utilizar vim-plug

```sh
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```



And in your vimrc:

```bash
call plug#begin()
Plug 'tpope/vim-sensible'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()
```

Y entrando a Vim, ejecutar

```bash
:PlugInstall
```

## [Definiendo márgenes](https://codingornot.com/2016/09/13/11-vim-formato/)

A diferencia de un editor de palabra como Writer de LibreOffice, en un editor de texto plano, no tenemos un punto de referencia predefinido para determinar dónde debe terminar un renglón. Si has utilizado editores de texto más simples, como nano o notepad tal vez hayas escrito líneas de texto muy largas. En Vim puedes utilizar la variable numérica textwidth (o su abreviatura `tw`) para indicar la longitud máxima que tendrán los renglones en el documento. Si una línea de texto excede el límite establecido por `tw`, esta será dividida por un salto de línea. Si el valor de esta opción es cero (el valor por defecto) inhabilita el margen y te permite escribir líneas tan largas como quieras.

```bash
:set textwidth=80 "El margen es fijado a 80 columnas
:set tw=0         "El margen es inhabilitado
:set textwidth    "Consulta el valor actual de 'textwidth'
:help 'textwidth' "Obtiene más información sobre esta variable
```

## Alineando texto

Vim también permite alinear texto. Una vez que ya definiste el ancho del texto en tu documento, ya tienes un marco de referencia contra el cual alinear texto a la izquierda, a la derecha e incluso centrarlo y justificarlo. Las primeras tres opciones son bastante simples, solo tienes que utilizar el comando correspondiente:


Comando	| Sirve para…
--------|-------------
:left	| alinear texto a la izquierda.
:right	| alinear texto a la derecha.
:center	| centrar texto.


Para justificar el texto no hay un comando propio del editor, pero gracias a un alma noble de nombre Preben “Peppe” Guldberg, existe un script llamado justify.vim que, muchas veces es incluido con el editor y proporciona, entre otras cosas, un comando llamado `:Justify` (nota como el nombre empieza con mayúscula), que justamente cumple con la función de justificar texto. Para habilitar este script ejecuta `:runtime macros/justify.ivm.` Si tu instalación de Vim no incluye este script pero tienes ganas de utilizarlo, puedes encontrarlo fácilmente en Internet. Si utilizas Linux puedes descargarlo así:

```bash
$ mkdir -p $HOME/.vim/plugin # Solo si el directorio no existe
$ wget http://ftp.stust.edu.tw/vim/runtime/macros/justify.vim \
-O $HOME/.vim/plugin/justify.vim
```

Este comando copiará `justify.vim` en tu directorio de plugins, de modo que ya no necesitarás cargarlo con el comando `:runtime`, si prefieres instalarlo como si hubiera sido distribuido con el editor, puedes copiarlo directamente al directorio `$VIMRUNTIME/macros.`

## [Markdown en github](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
