# minilibx in linux / windows
Minilibx is a very basic graphical library written in C used in 42
and in Epitech for infography project.
# Steps :

### Update/upgrade your system:

* apt-get update
* apt-get upgrade

### Install the following packages:

* apt install libx11-dev
* apt install libxext-dev
* apt install libbsd-dev
* apt install clang

## Get minilibx sources:
```
git clone https://github.com/42Paris/minilibx-linux minilibx_linux
```

#### Compile and install mlx.a in minilibx_linux with

* cd minilibx_linux; make && sudo ./configure

#### Change MLXFLAGS in your makefile to:

* MLXFLAG = -lmlx -lXext -lX11

## Notes for windows
```
* install ubuntu terminal (or other distribution linux ) on windows 10 from windows store

* do the previous steps + you have to install gcc and make
```
### Graphical programs

to run graphical programs on your windows 10 desktop

you need a GUI server, such as X11. Such doesn’t not exist for Windows,

but there are alternatives, one of which is Xming, which can be downloaded

free of charge, from [SourceForge](https://sourceforge.net/projects/xming/) (set private when ask)

then enable bash to use xming which can be done by typing the following line

```
echo "export DISPLAY=localhost:0.0" >> ~/.bashrc
```

its preferable to launch xming automatically after boot, move xming program to the following repo:

* C:\Users\login\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup


- after adding variables such DISPLAY, open a new bash session by typing
```
 bash
```
or
```
 source ~/.bashrc
```
### Extra notes:
* the process is explained using bash shell, you should modify it by whatever shell you are using (zsh, sh, ..)
* for events management, the mask should be (1L << 0) instead of 0
```
mlx_hook(p.win_ptr, 2, (1L << 0), ft_event_keys, &p);
```
* to simplify the usage of keys macros in mac os and linux, include key_macos.h and key_linux.h files:
```
# if defined(__APPLE__)
#  include <key_macos.h>
# else
#  include <key_linux.h>
# endif
```

### Docker image

`ilkou/minilibx`

