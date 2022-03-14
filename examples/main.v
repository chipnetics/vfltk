#flag -I/home/jp/cfltk/include
#flag -L/home/jp/Sync/v_projects/fltk_v/lib
#flag -lcfltk -lfltk -lfltk_images
#flag -ldl -lm -lXext -lXft -lfontconfig -lXrender -lpthread -lX11 -lXinerama -lXfixes -lXcursor
//#flag -lpng16 -lz -ljpeg 

#include "cfl.h"
#include "cfl_button.h"
#include "cfl_widget.h"
#include "cfl_window.h"

struct C.Fl_Window {
}

struct C.Fl_Button {
}

struct C.Fl_Widget {
}

fn C.Fl_init_all()
fn C.Fl_lock()
fn C.Fl_Window_end(&C.Fl_Window)
fn C.Fl_Window_show(&C.Fl_Window)
fn C.Fl_run()
fn C.Fl_Window_new(int,int,int,int,&char) &C.Fl_Window
fn C.Fl_Button_new(int,int,int,int,&char) &C.Fl_Button
fn C.Fl_Button_set_callback(&C.Fl_Button, cb, voidptr)

fn main()
{
	C.Fl_init_all() 
    C.Fl_lock()
	
    w := C.Fl_Window_new(100, 100, 400, 300, c"Some window")
    b := C.Fl_Button_new(160, 210, 80, 40, c"Click me")
    
	C.Fl_Window_end(w)
    C.Fl_Window_show(w)
    C.Fl_Button_set_callback(b, cb, C.NULL)
    C.Fl_run()
}

fn cb(widget &C.Fl_Widget,data voidptr)
{
	println("pressed")
}
