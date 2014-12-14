scriptId = 'com.thalmic.examples.HACKTOY'
scriptTitle = "HACKTOY"
scriptDetailsUrl = "" -- We don't have this until it's submitted to the Myo Market


-- function getAccel( ... )
-- 	worldx, worldy, worldz = myo.getOrientationWorld()
-- 	myo.debug(worldx..", ".. ", ".. worldy..", ".. worldz)

--     -- body
-- end

function onForegroundWindowChange(app, title)
    myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
    return true
end

function activeAppName()
    return "HACKTOY"
end

-- function spin()
-- 	return "spin"
--     --myo.keyboard("down_arrow", "press")
-- end

-- function stop()
-- 	return "stop"
--     --myo.keyboard("up_arrow", "press")
-- end

function onActiveChange(isActive)

end

function onPoseEdge(pose, edge)
	if pose == "fist" then
		local now = myo.getTimeMilliseconds()
		if edge == "on" then
		 	return "spin"
		-- end
	 -- if edge == "off" then
		-- myo.unlock("hold")
	 -- end	
	 -- if pose == "fingersSpread" then
	 -- 	local now = myo.getTimeMilliseconds()
		-- if edge == "on" then
		-- 	stop()
		-- end
	    end
	end
    myo.debug("onPoseEdge: " .. pose .. ", " .. edge)
    myo.getOrientationWorld()

    -- myo.getYaw()
    -- myo.getRoll()
    -- myo.getgyro()
end
