execute unless score #timer_redstone counter matches 1..599 run scoreboard players set #timer_redstone counter 600

scoreboard players remove #timer_redstone counter 1

execute if score #timer_redstone counter matches 1..599 run schedule function builder_and_redstoner:timers/timer_redstone 1s
execute if score #timer_redstone counter matches 0 run schedule function builder_and_redstoner:control/to_endturn 1s