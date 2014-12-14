
scriptId = 'com.thalmic.scripts.Podracer'
scriptDetailsUrl = 'https://market.myo.com/app/5474c658e4b0361138df2a9e'
scriptTitle = "Podracer"

function onPoseEdge(pose, edge)
    myo.debug("onPoseEdge: " .. pose .. ", " .. edge)
end

function onPeriodic()
	--myo.getOrientationWorld()
    
    -- myo.debug(myo.getRoll())
    roll = myo.getRoll()
    if roll < -1 then
      myo.debug('-----<|L|>----------------')
     elseif roll > .1 then
      myo.debug('------------------<|R|>---')
     else
      myo.debug('----------<|C|>-----------')
     end
end

function onForegroundWindowChange(app, title)
    myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
    return true
end

function activeAppName()
    return "Podracer"
end

function onActiveChange(isActive)
    myo.debug("onActiveChange")
end

