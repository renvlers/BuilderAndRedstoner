title @a reset
playsound block.note_block.bell master @a ~ ~ ~ 10000000 2

execute \
    store result score #building_turns_left counter run \
        data get storage builder_and_redstoner:config config.building_turns
execute \
    store result score #redstone_turns_left counter run \
        data get storage builder_and_redstoner:config config.redstone_turns

scoreboard players set #total_turns counter 0
scoreboard players operation #total_turns counter += #building_turns_left counter
scoreboard players operation #total_turns counter += #redstone_turns_left counter

scoreboard players set #current_turn counter 0
execute if score #red_team_count player_count matches 1.. run scoreboard players set #red total_score 0
execute if score #orange_team_count player_count matches 1.. run scoreboard players set #orange total_score 0
execute if score #yellow_team_count player_count matches 1.. run scoreboard players set #yellow total_score 0
execute if score #green_team_count player_count matches 1.. run scoreboard players set #green total_score 0
execute if score #blue_team_count player_count matches 1.. run scoreboard players set #blue total_score 0
execute if score #purple_team_count player_count matches 1.. run scoreboard players set #purple total_score 0

function builder_and_redstoner:control/to_selecting