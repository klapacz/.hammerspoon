hs.eventtap.new({ hs.eventtap.event.types.leftMouseDown }, function(e)
    local whichFlags = e:getFlags()

    if whichFlags['alt'] then
        local point = hs.mouse.absolutePosition()
        hs.eventtap.middleClick(point, 0)
    end 
end):start()