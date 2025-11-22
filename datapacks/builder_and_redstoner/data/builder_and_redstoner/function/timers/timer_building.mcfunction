execute unless score #timer_building counter matches 1..299 run scoreboard players set #timer_building counter 300

scoreboard players remove #timer_building counter 1

execute if score #timer_building counter matches 1..299 run schedule function builder_and_redstoner:timers/timer_building 1s
execute if score #timer_building counter matches 0 run schedule function builder_and_redstoner:control/to_endturn 1s