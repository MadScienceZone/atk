# About this fork
This is just a quick placeholder for the moment. I may work on customizations at some point
but for the time being this is just a straight fork of the original Atk package from
visualfc.

## Usage
I haven't spent any time resetting the internal module references so it won't work directly
yet. At the moment the only change is the `cgo` settings which point the tk libraries away from
the deprecated MacOS tk framework and to a custom install of Tk via Homebrew on the Mac platform.
To use this, just clone the repo somewhere and then add a line to your project's `go.mod` file:

```
replace github.com/visualfc/atk => /my/path/to/where/I/cloned/this/atk
```

This way your code still imports as
```
import "github.com/visualfc/atk/tk"
```
but will pick up the forked copy instead, without changing anything else (and can be built
on other platforms without the `replace` statement to use the stock visualfc version).


# atk
Another Golang Tcl/Tk binding GUI ToolKit

	go get github.com/visualfc/atk


### Install Tcl/Tk

http://www.tcl-lang.org


* MacOS X

	https://www.activestate.com/activetcl/downloads

* Windows

	https://www.activestate.com/activetcl/downloads
	
	https://github.com/visualfc/tcltk_mingw

* Ubuntu

	$ sudo apt install tk-dev

* CentOS

	$ sudo yum install tk-devel

### Demo

https://github.com/visualfc/atk_demo

### Sample
```go
package main

import (
	"github.com/visualfc/atk/tk"
)

type Window struct {
	*tk.Window
}

func NewWindow() *Window {
	mw := &Window{tk.RootWindow()}
	lbl := tk.NewLabel(mw, "Hello ATK")
	btn := tk.NewButton(mw, "Quit")
	btn.OnCommand(func() {
		tk.Quit()
	})
	tk.NewVPackLayout(mw).AddWidgets(lbl, tk.NewLayoutSpacer(mw, 0, true), btn)
	mw.ResizeN(300, 200)
	return mw
}

func main() {
	tk.MainLoop(func() {
		mw := NewWindow()
		mw.SetTitle("ATK Sample")
		mw.Center(nil)
		mw.ShowNormal()
	})
}
```
