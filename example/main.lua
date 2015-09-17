-- 
-- Abstract: deltatime Library Plugin Test Project
-- 
-- Sample code is MIT licensed, see http://www.coronalabs.com/links/code/license
-- Copyright (C) 2015 Corona Labs Inc. All Rights Reserved.
--
------------------------------------------------------------

local deltatime = require "plugin.deltatime"

deltatime.start()

local object = display.newRect( display.contentCenterX, display.contentCenterY, 100, 100)
object.anchorX = 0

local function enterFrame()
	-- Try changing the fps in config.lua and the object will move at the same
	-- speed even if you don't change the speed variable. This happens because
	-- the speed variable is compensated by multiplying it by deltatime.multiplier.
	local speed = 2 * deltatime.multiplier()

	object:translate( speed, 0 )

	-- smoothly wrap object
	if object.x > display.contentWidth then 
		object.x = -object.width
	end
end

Runtime:addEventListener( "enterFrame", enterFrame )