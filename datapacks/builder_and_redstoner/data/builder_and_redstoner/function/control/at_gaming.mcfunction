execute if score #turn_type temp matches 0 run scoreboard players operation #minutes_left temp = #timer_building counter
execute if score #turn_type temp matches 0 run scoreboard players operation #seconds_left temp = #timer_building counter
execute if score #turn_type temp matches 1 run scoreboard players operation #minutes_left temp = #timer_redstone counter
execute if score #turn_type temp matches 1 run scoreboard players operation #seconds_left temp = #timer_redstone counter
scoreboard players operation #minutes_left temp /= #divider temp
scoreboard players operation #seconds_left temp %= #divider temp

function builder_and_redstoner:actions/update_gaming_sidebar with entity @n[tag=memory_entity, type=marker] data
function builder_and_redstoner:actions/protect_gaming_area

# TODO: teleport players out of area