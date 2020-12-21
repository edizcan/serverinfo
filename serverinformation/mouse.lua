function mouse(self)
    if getElementData(self, "mouse:open") then
        showCursor(self, false)
        setElementData(self, "mouse:open", false)
    else
        showCursor(self, true)
        setElementData(self, "mouse:open", true)
    end
end
addCommandHandler('mouse', mouse)
--bindKey ( self, "m", "both", mouse ) -- bind the player's fire down and up control