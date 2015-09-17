# deltatime.start()

| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [deltatime.*](Readme.markdown)
| __Return value__     | None


## Overview

This function starts the computation of the deltatime functions on each frame. While it internally adds a Runtime event listener to the "enterFrame" event, its impact is minimal even on older devices.


## Syntax

	deltatime.start( )


## Examples

``````lua
local deltatime = require 'plugin.deltatime'

deltatime.start( )
``````
