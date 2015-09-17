# deltatime.actualMsPerFrame()

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [deltatime.*](Readme.markdown)
| __Return value__     | [Number](https://docs.coronalabs.com/api/type/Number.html)
| __See also__         | [deltatime.idealMsPerFrame()](idealMsPerFrame.markdown)


## Overview

This function returns the actual number of milliseconds that have gone by since the previous frame.


## Syntax

	deltatime.actualMsPerFrame( )


## Examples

``````lua
local deltatime = require "plugin.deltatime"

deltatime.start( )

local function enterFrame( )
	-- Depending on your CPU speed, printing to the console will significantly reduce your fps.
	-- If that is the case you should instead use display.newText in order to show this 
	-- number more accurately.
	print(deltatime.actualMsPerFrame( ))
end

Runtime:addEventListener( "enterFrame", enterFrame )
``````