# vfltk
V wrapper for FLTK.

As FLTK is written in C++; V must utilize a C wrapper for ease. The work *cfltk* is one such wrapper, which can be found [here](https://github.com/MoAlyousef/cfltk)



To use vfltk; you must build from the above project:

- libcfltk.a, libfltk.a [Required]
- libfltk_forms.a, libfltk_gl.a, libfltk_images.a [Optional] 

# Author Instructions on building cfltk

```
$ git clone https://github.com/moalyousef/cfltk
$ cd cfltk
$ git submodule update --init --recursive
$ cmake -B bin -S .
$ cd bin
$ make
```
After building:

- libcfltk.a can be found in cfltk/bin
- associated headers in cfltk/include
- libfltk.a, libfltk_forms.a, libfltk_gl.a, libfltk_images.a are in cfltk/bin/fltk/lib

# FLTK in V

To use FLTK in V, at minimum you will need these libraries:
- pthread 
- X11 
- Xext
- Xinerama 
- Xcursor 
- Xrender 
- Xfixes 
- Xft 
- fontconfig

Optional image support:
- png16 
- jpeg

Optional text internationalization:
- pango-1.0 
- pangoxft-1.0 
- gobject-2.0 
- cairo 
- pangocairo-1.0

You should be able to scoop most the essentionals up with

```
$ sudo apt-get install libx11-dev libxext-dev libxft-dev libxinerama-dev libxcursor-dev libxrender-dev libxfixes-dev libpango1.0-dev libgl1-mesa-dev libglu1-mesa-dev
```

# Current state

At present, this is just an example with Window widget, Button widget, and a callback.  

**In due time a wrapper module will be implemented.**

# Required C-to-V Flags

```v
#flag -I/path/to/cfltk/includes
#flag -L/path/to/cfltk.a/lib
#flag -lcfltk -lfltk -lfltk_images
#flag -ldl -lm -lXext -lXft -lfontconfig -lXrender -lpthread -lX11 -lXinerama -lXfixes -lXcursor
```

Notice you must also link against dl (dynamic loader) and m (math library).

Unless you're using images, you don't need to link against fltk_images; but it's shown for completeness.
