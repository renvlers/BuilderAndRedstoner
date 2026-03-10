execute if score #lock parkour_platform_control matches 1 run return fail

setblock 175 112 -49 stone_button[face=wall, facing=west]
function rbworkshop_parkour_control:actions/call_platform_0
schedule function rbworkshop_parkour_control:actions/reset_platform_0 60t