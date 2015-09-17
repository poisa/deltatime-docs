# deltatime.multiplier()

|                      | &nbsp; 
| -------------------- | ---------------------------------------------------------------
| __Type__             | [function](http://docs.coronalabs.com/api/type/Function.html)
| __Library__          | [deltatime.*](Readme.markdown)
| __Return value__     | [Number](https://docs.coronalabs.com/api/type/Number.html)


## Overview

This function returns the multiplier that you have to multiply your own values by in order to get time based animations.


## Syntax

	deltatime.multiplier( )


## Examples

``````lua
local deltatime = require "plugin.deltatime"

deltatime.start( )

local object = display.newRect( display.contentCenterX, display.contentCenterY, 100, 100)

local function enterFrame( )
	-- Try changing the fps in config.lua and the object will move at the same
	-- speed even if you don't change the speed variable. This happens because
	-- the speed variable is compensated by multiplying it by deltatime.multiplier.
	local speed = 2 * deltatime.multiplier( )

	object:translate( speed, 0 )
end

Runtime:addEventListener( "enterFrame", enterFrame )
``````
