# count ready players
execute \
    store result score #ready player_count run \
        execute if entity @a[scores={ready=1}]

# count active teams
scoreboard players set #red_team_count player_count 0
scoreboard players set #orange_team_count player_count 0
scoreboard players set #yellow_team_count player_count 0
scoreboard players set #green_team_count player_count 0
scoreboard players set #blue_team_count player_count 0
scoreboard players set #purple_team_count player_count 0

execute as @a[team=red] run scoreboard players add #red_team_count player_count 1
execute as @a[team=orange] run scoreboard players add #orange_team_count player_count 1
execute as @a[team=yellow] run scoreboard players add #yellow_team_count player_count 1
execute as @a[team=green] run scoreboard players add #green_team_count player_count 1
execute as @a[team=blue] run scoreboard players add #blue_team_count player_count 1
execute as @a[team=purple] run scoreboard players add #purple_team_count player_count 1

scoreboard players set #active_teams temp 0
execute \
    if score #red_team_count player_count matches 1.. run \
        scoreboard players add #active_teams temp 1
execute \
    if score #orange_team_count player_count matches 1.. run \
        scoreboard players add #active_teams temp 1
execute \
    if score #yellow_team_count player_count matches 1.. run \
        scoreboard players add #active_teams temp 1
execute \
    if score #green_team_count player_count matches 1.. run \
        scoreboard players add #active_teams temp 1
execute \
    if score #blue_team_count player_count matches 1.. run \
        scoreboard players add #active_teams temp 1
execute \
    if score #purple_team_count player_count matches 1.. run \
        scoreboard players add #active_teams temp 1

# update sidebar
function builder_and_redstoner:actions/update_lobby_sidebar

# prevent item drop
function builder_and_redstoner:actions/prevent_item_drop

# provide introduction and staff info and handle their right click events
function builder_and_redstoner:actions/provide_staff_info_item
execute as @a[sort=arbitrary] at @s if score @s right_check matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data={item_type: "staff_info"}] run dialog show @s builder_and_redstoner:staff_info
execute as @a[sort=arbitrary] at @s if score @s right_check matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data={item_type: "staff_info"}] run scoreboard players reset @s right_check

function builder_and_redstoner:actions/provide_introduction_item
execute as @a[sort=arbitrary] at @s if score @s right_check matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data={item_type: "introduction"}] run dialog show @s builder_and_redstoner:introduction
execute as @a[sort=arbitrary] at @s if score @s right_check matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data={item_type: "introduction"}] run scoreboard players reset @s right_check

# check ready status
execute \
    as @a[sort=arbitrary, tag=!parkour_participant] run \
        function builder_and_redstoner:actions/check_ready
execute \
    as @a[sort=arbitrary,team=] run \
        function builder_and_redstoner:actions/cancel_ready
execute \
    as @a[sort=arbitrary, tag=!parkour_participant] \
    if score @s right_check matches 1.. run \
        function builder_and_redstoner:events/on_rightclick_ready
execute \
    as @a[sort=arbitrary, tag=!parkour_participant] \
    if score @s right_check matches 1.. run \
        scoreboard players reset @s right_check

# join a team
execute \
    as @a[sort=arbitrary,x=45, y=64, z=-13, dx=0, dy=0, dz=0, team=!red] run \
        function builder_and_redstoner:actions/join_red_team
execute \
    as @a[sort=arbitrary,x=47, y=64, z=-13, dx=0, dy=0, dz=0, team=!orange] run \
        function builder_and_redstoner:actions/join_orange_team
execute \
    as @a[sort=arbitrary,x=49, y=64, z=-13, dx=0, dy=0, dz=0, team=!yellow] run \
        function builder_and_redstoner:actions/join_yellow_team
execute \
    as @a[sort=arbitrary,x=51, y=64, z=-13, dx=0, dy=0, dz=0, team=!green] run \
        function builder_and_redstoner:actions/join_green_team
execute \
    as @a[sort=arbitrary,x=53, y=64, z=-13, dx=0, dy=0, dz=0, team=!blue] run \
        function builder_and_redstoner:actions/join_blue_team
execute \
    as @a[sort=arbitrary,x=55, y=64, z=-13, dx=0, dy=0, dz=0, team=!purple] run \
        function builder_and_redstoner:actions/join_purple_team
execute as @a[sort=arbitrary, x=64, y=64, z=-13, dx=0, dy=0, dz=0, team=!] run function builder_and_redstoner:actions/leave_team

# detect menu button clicks
execute \
    as @n[tag=building_turns_button,type=interaction] \
    if data entity @s interaction \
    on target run \
        function builder_and_redstoner:events/on_building_turns_button_click
execute \
    as @n[tag=building_turns_button,type=interaction] \
    if data entity @s interaction \
    on target run \
        data remove entity @n[tag=building_turns_button,type=interaction] interaction

execute \
    as @n[tag=redstone_turns_button,type=interaction] \
    if data entity @s interaction \
    on target run \
        function builder_and_redstoner:events/on_redstone_turns_button_click
execute \
    as @n[tag=redstone_turns_button,type=interaction] \
    if data entity @s interaction \
    on target run \
        data remove entity @n[tag=redstone_turns_button,type=interaction] interaction

execute \
    as @n[tag=start_game_button,type=interaction] \
    if data entity @s interaction \
    on target run \
        function builder_and_redstoner:events/on_start_game_button_click
execute \
    as @n[tag=start_game_button,type=interaction] \
    if data entity @s interaction \
    on target run \
        data remove entity @n[tag=start_game_button,type=interaction] interaction

execute as @n[tag=random_partition_button,type=interaction] if data entity @s interaction on target run function builder_and_redstoner:events/on_random_partition_button_click
execute as @n[tag=random_partition_button,type=interaction] if data entity @s interaction on target run data remove entity @n[tag=random_partition_button,type=interaction] interaction

execute as @e[tag=seat, sort=arbitrary, type=interaction] if data entity @s interaction run function builder_and_redstoner:events/on_seat_right_clicked