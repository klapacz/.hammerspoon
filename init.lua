hs.eventtap.new({ hs.eventtap.event.types.leftMouseDown }, function(e)
    local whichFlags = e:getFlags()

    if whichFlags['alt'] then
        local point = hs.mouse.absolutePosition()
        hs.eventtap.middleClick(point, 0)
    end 
end):start()

-- TODO: switch between spaces with cmd + [0-9]
-- for space = 1, 6 do
--     hs.hotkey.bind({"cmd"}, tostring(space), function()
--         local screen = primaryScreen
--         print(hs.inspect(screen))
--         local spaces = hs.spaces.spacesForScreen()
--         -- TODO: check spaces length
--         local spaceID = spaces[space]
--         hs.spaces.gotoSpace(spaceID)
--     end)
-- end