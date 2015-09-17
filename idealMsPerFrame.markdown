# deltatime.idealMsPerFrame()

| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [deltatime.*](Readme.markdown)
| __Return value__     | [Number](https://docs.coronalabs.com/api/type/Number.html)
| __See also__         | [deltatime.actualMsPerFrame()](actualMsPerFrame.markdown)


## Overview

This function returns the number of milliseconds that should ideally happen betwen frames at 60 frames per seconds. This is not a computed value but a constant. To get the ideal milliseconds per frame at 30 fps you can multiply this value by 2.


## Syntax

	deltatime.idealMsPerFrame( )


## Examples

``````lua
local deltatime = require "plugin.deltatime"

deltatime.start( )

local function enterFrame( )
	print(deltatime.idealMsPerFrame( ))
end

Runtime:addEventListener( "enterFrame", enterFrame )
``````