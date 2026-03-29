scoreboard players set #red vote 0
scoreboard players set #orange vote 0
scoreboard players set #yellow vote 0
scoreboard players set #green vote 0
scoreboard players set #blue vote 0
scoreboard players set #purple vote 0

scoreboard players set #red voted 0
scoreboard players set #orange voted 0
scoreboard players set #yellow voted 0
scoreboard players set #green voted 0
scoreboard players set #blue voted 0
scoreboard players set #purple voted 0

execute if score #red_team_count player_count matches 0 run scoreboard players set #red voted 1
execute if score #orange_team_count player_count matches 0 run scoreboard players set #orange voted 1
execute if score #yellow_team_count player_count matches 0 run scoreboard players set #yellow voted 1
execute if score #green_team_count player_count matches 0 run scoreboard players set #green voted 1
execute if score #blue_team_count player_count matches 0 run scoreboard players set #blue voted 1
execute if score #purple_team_count player_count matches 0 run scoreboard players set #purple voted 1

scoreboard players reset #teams_left counter

execute as @e[sort=arbitrary,tag=click_detector, type=interaction] run data remove entity @s attack
execute as @e[sort=arbitrary,tag=click_detector, type=interaction] run data remove entity @s interaction

data remove entity @n[tag=memory_entity, type=marker] data.current_test_cases
scoreboard players reset #select_test_cases_counter counter
function builder_and_redstoner:actions/select_test_cases
function builder_and_redstoner:actions/start_testing

execute unless data storage builder_and_redstoner:config { config: { status: "TESTING" } } run data modify storage builder_and_redstoner:config config.status set value "TESTING"