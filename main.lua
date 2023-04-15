_DEBUG = true

print_raw("\a9FCA2B[Luck.Technologies] \aDEFAULTLuck value is boosted to max!!")

local dt = ui.find("aimbot", "ragebot", "main", "double tap")
local bitch = ui.find("Aimbot", "Ragebot", "Main", "Double Tap", "Lag Options")

local group_ref = ui.create("Luck.Technologies")
local switch_ref = group_ref:switch("Dynamic Break LC", true)
switch_ref:set(false)

local switch_ref2 = group_ref:switch("Ultra Secret Superman Obama Exploit", true)
switch_ref2:set(false)

function Hallal()
    if switch_ref2:get() == true then
        rage.exploit:force_teleport()

        rage.exploit:force_charge()
    end
end

function Allah()
    local rate = 14
    local tick = globals.tickcount % rate + 1

    if tick >= rate and switch_ref:get() == true then
        bitch:override("Disabled")
    else
        bitch:override("Always on")
    end
end

events.createmove_run:set(
    function(cmd)
        Allah()
        Hallal()
    end
)
