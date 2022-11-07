--[[
    The C64 Project
        by JWBstuhr

    v1-ID

    This project aims to implement a simple
    Commodore64-esque shell interface for ComputerCraft.
]]--
local w,h = term.getSize()
local master = {
    color = {
        prim = colors.lightBlue,
        scnd = colors.blue 
    }
}
local c64 = {}
function c64.setTermColors()
    term.setBackgroundColor(master.color.scnd)
    term.setTextColor(master.color.prim)
end

local function printCentered(t)
    local cx, cy = term.getCursorPos()
    term.setCursorPos(w/2 - string.len(t)/2,cy)
    print(t)
end

function c64.printCentered(t)
    c64.setTermColors()
    local cx, cy = term.getCursorPos()
    term.setCursorPos(w/2 - string.len(t)/2,cy)
    print(t)
end

function c64.refresh()
    c64.setTermColors()
    term.clear()
    paintutils.drawBox(1,1,w,h,master.color.prim)
    term.setCursorPos(1,2)
    c64.printCentered("**** COMMODORE 64 BASIC V2 ****")
    term.setCursorPos(1,1)
end

c64.refresh()