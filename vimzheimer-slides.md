%title: VIMzheimer
%author: andresaquino
%date: 2018-03-15
%vim: ts=3 sw=3 sts=3 si ai noet list:

# Everyday working with VIM

Vim is a highly configurable text editor built to make creating and 
changing any kind of text very efficient. 

It is included as "vi" with most UNIX systems and with Apple OS X. 

Vim is rock stable and is continuously being developed to become even 
better. 

Author: Bram Moolenaar <Bram@vim.org>


----------------------------------------------------------------------

# History (yes, wikipedia)

STEVIE, ST Editor for VI Enthusiasts, was a clone of Bill Joy's vi editor 
created by Tim Thompson for the Atari ST in 1987.

Thompson posted his original C source code as free software to the 
comp.sys.atari.st newsgroup on June 28, 1987.

In 1991, Bram Moolenaar released Vim, which he based on source for 
the Amiga port.

Timeline of VIM
1988       Vim 1.0      Vi IMitation on the Amiga
1991       Vim 1.14     First public release (on Fred Fish disk #591)
1992       Vim 1.22     Port to Unix, renamed to Vi IMproved
1994       Vim 3.0      Multiple windows
1996       Vim 4.0      GUI
1998       Vim 5.0      Syntax highlighting
2001       Vim 6.0      Folding, multi-language
2006       Vim 7.0      On the fly spell checker, support for tabs


----------------------------------------------------------------------

# VIMLovers

> I love and use VIM heavily too.  (Larry Wall)


## Mental Note
> Do you remember Scott's emulsion?
> Well, over time, you love it because you realize that it is good
> for your health.
> Just as VIM.
  Yep, so.. a guy talking about an unpleasant childhood experience.


----------------------------------------------------------------------

# 01. Everyday working with VIM: Vertical Split 

We can split our window in vertical or horizontal form, as we need it.
To do that, we will use a vim command or a vim option. Let's open our 
first file:

Using a VIM command:

	:vsp file02
	

Or using a VIM option:

	vim -O file01 file02
	


----------------------------------------------------------------------

# 02. Everyday working with VIM: Horizontal Split 

We can split our window in vertical or horizontal form, as we need it.
To do that, we will use a vim command or a vim option. Let's open our 
first file:

Using a VIM command:

	:sp file02
	

Or using a VIM option:

	vim -o file01 file02
	


----------------------------------------------------------------------

# 03. Everyday working with VIM: Scrollbinding

En ocasiones es necesario verificar los archivos línea por línea, una 
opción es usar el vimdiff; otra opción hacer un scrollbind.

_Comando_

	:windo set scrollbind
	

_Descripción_

*windo*
> Ejecuta el comando en cada ventana abierta

*scrollbind*
> Asocia la posición con la ventana contigua


----------------------------------------------------------------------

# 04. Everyday working with VIM: Automagical Headers 
(a simple vimscripting exercise) 

Un poco de VIMScripting nos puede facilitar ciertas actividades del día
a día, como automatizar la inserción de texto bajo ciertos criterios.

Tomar el plugin de la siguiente dirección:

> https://gist.github.com/379e9deee06cb320aa01eb989b0e7151.git

Y colocarlo en el siguiente directorio:

> .vim/plugin/ -> .vim/plugin/headers.vim

Verificar creando un archivo válido para el plugin, ej.

	vim test.sh
	

----------------------------------------------------------------------

# 05. Everyday working with VIM: EditorConfig

Es posible dividir la ventana de forma horizontal o vertical, según sea
necesario, para ello se tendrá que invocar la orden desde el editor o 
desde línea de comandos.

Dentro del editor:

	:sp file02
	 

O por línea de comandos:

	vim -o file01 file02
	 


----------------------------------------------------------------------

# 06. Everyday working with VIM: Ultisnips + SuperTab

Es posible dividir la ventana de forma horizontal o vertical, según sea
necesario, para ello se tendrá que invocar la orden desde el editor o 
desde línea de comandos.

Dentro del editor:

	:sp file02
	 

O por línea de comandos:

	vim -o file01 file02
	 


----------------------------------------------------------------------

# 07. Everyday working with VIM: CtrlP

Es posible dividir la ventana de forma horizontal o vertical, según sea
necesario, para ello se tendrá que invocar la orden desde el editor o 
desde línea de comandos.

Dentro del editor:

	:sp file02
	 

O por línea de comandos:

	vim -o file01 file02
	 


----------------------------------------------------------------------

# 08. Everyday working with VIM: DelimitMate + VIM-Matchup

Es posible dividir la ventana de forma horizontal o vertical, según sea
necesario, para ello se tendrá que invocar la orden desde el editor o 
desde línea de comandos.

Dentro del editor:

	:sp file02
	 

O por línea de comandos:

	vim -o file01 file02
	 


----------------------------------------------------------------------

# 09. Everyday working with VIM: IndentLine + VIM-Autoformat

Es posible dividir la ventana de forma horizontal o vertical, según sea
necesario, para ello se tendrá que invocar la orden desde el editor o 
desde línea de comandos.

Dentro del editor:

	:sp file02
	 

O por línea de comandos:

	vim -o file01 file02
	 


----------------------------------------------------------------------

# 10. Everyday working with VIM: VIM-fugitive + Gist + VIM-gitgutter

Es posible dividir la ventana de forma horizontal o vertical, según sea
necesario, para ello se tendrá que invocar la orden desde el editor o 
desde línea de comandos.

Dentro del editor:

	:sp file02
	 

O por línea de comandos:

	vim -o file01 file02
	 


----------------------------------------------------------------------

# 11. Everyday working with VIM: Using Diff and merge 

Es posible dividir la ventana de forma horizontal o vertical, según sea
necesario, para ello se tendrá que invocar la orden desde el editor o 
desde línea de comandos.

Dentro del editor:

	:sp file02
	 

O por línea de comandos:

	vim -o file01 file02
	 


----------------------------------------------------------------------

# 12. Everyday working with VIM: A more confortable information tool

Es posible dividir la ventana de forma horizontal o vertical, según sea
necesario, para ello se tendrá que invocar la orden desde el editor o 
desde línea de comandos.

Dentro del editor:

	:sp file02
	 

O por línea de comandos:

	vim -o file01 file02
	 


----------------------------------------------------------------------

# VIM Cheatsheet

> Ctrl + w , s  : Split window (horizontal)
> Ctrl + w , j  : Move to the window below (in horizontal split)
> Ctrl + w , k  : Move to the window above (in horizontal split)
> Ctrl + w , w  : Switch window (horizontal and vertical split)
> Ctrl + w , v  : Split window vertically
> Ctrl + w , h  : Move to the left window (in vertical split)
> Ctrl + w , l  : Move to the right window (in vertical split)
> Ctrl + w , H  : Change mode view to vertical split (w/+2 buffer) left side
> Ctrl + w , L  : Change mode view to vertical split (w/+2 buffer) rigth side
> Ctrl + w , J  : Change mode view to horizontal split (w/+2 buffer) move top
> Ctrl + w , K  : Change mode view to horizontal split (w/+2 buffer) move bottom
> Ctrl + w , q  : Quit


----------------------------------------------------------------------

# References

## Markdown Presentation Tool 

> mdp: Command-line based markdown presentation tool
> https://github.com/visit1985/mdp

## Vim Cheat Sheet

> https://vim.rtorr.com/

## VIM Cast

> http://vimcasts.org/

## UseVIM

> https://medium.com/usevim


----------------------------------------------------------------------

# VIMzheimer

Blog posts series

> https://log.andresaquino.sh/search/label/tools.log


Author
> Andrés Aquino 
> <inbox@andresaquino.sh>

