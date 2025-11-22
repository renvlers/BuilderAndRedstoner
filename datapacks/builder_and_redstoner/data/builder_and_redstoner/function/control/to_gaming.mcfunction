playsound minecraft:block.note_block.harp master @a ~ ~ ~ 10000000 2
title @a reset

# decide theme or problem
function builder_and_redstoner:actions/decide_themes_or_problems

# show title
function builder_and_redstoner:actions/show_turn_start_title with entity @n[tag=memory_entity, type=marker] data

# set effects
function builder_and_redstoner:actions/set_effects

# teleport players and set gamemode to creative

execute as @a[team=red] run tp @s 10225 75 -2 90 15
execute as @a[team=orange] run tp @s 10272 75 -2 90 15
execute as @a[team=yellow] run tp @s 10319 75 -2 90 15
execute as @a[team=green] run tp @s 10225 75 45 90 15
execute as @a[team=blue] run tp @s 10272 75 45 90 15
execute as @a[team=purple] run tp @s 10319 75 45 90 15
gamemode spectator @a
schedule function builder_and_redstoner:actions/set_gamemode_to_creative 1t

# start timing
execute if score #turn_type temp matches 0 run function builder_and_redstoner:timers/timer_building
execute if score #turn_type temp matches 1 run function builder_and_redstoner:timers/timer_redstone

execute \
    unless data storage builder_and_redstoner:config {config: {status: "GAMING"}} run \
        data modify storage builder_and_redstoner:config config.status set value "GAMING"