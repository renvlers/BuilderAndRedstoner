# sidebar layout:
# you are at lobby
# blank line
# turns of building
# turns of redstone
# blank line
# number of online players
# number of ready players
# blank line
# my team
# number of active teams
scoreboard objectives setdisplay sidebar lobby_sidebar
scoreboard objectives setdisplay sidebar.team.red lobby_sidebar_red
scoreboard objectives setdisplay sidebar.team.gold lobby_sidebar_orange
scoreboard objectives setdisplay sidebar.team.yellow lobby_sidebar_yellow
scoreboard objectives setdisplay sidebar.team.green lobby_sidebar_green
scoreboard objectives setdisplay sidebar.team.blue lobby_sidebar_blue
scoreboard objectives setdisplay sidebar.team.dark_purple lobby_sidebar_purple

scoreboard players set *label_you_are_at_lobby lobby_sidebar 2147483647
scoreboard players set *label_you_are_at_lobby lobby_sidebar_red 2147483647
scoreboard players set *label_you_are_at_lobby lobby_sidebar_orange 2147483647
scoreboard players set *label_you_are_at_lobby lobby_sidebar_yellow 2147483647
scoreboard players set *label_you_are_at_lobby lobby_sidebar_green 2147483647
scoreboard players set *label_you_are_at_lobby lobby_sidebar_blue 2147483647
scoreboard players set *label_you_are_at_lobby lobby_sidebar_purple 2147483647

scoreboard players set *label_blank0 lobby_sidebar 2147483646
scoreboard players set *label_blank0 lobby_sidebar_red 2147483646
scoreboard players set *label_blank0 lobby_sidebar_orange 2147483646
scoreboard players set *label_blank0 lobby_sidebar_yellow 2147483646
scoreboard players set *label_blank0 lobby_sidebar_green 2147483646
scoreboard players set *label_blank0 lobby_sidebar_blue 2147483646
scoreboard players set *label_blank0 lobby_sidebar_purple 2147483646

scoreboard players set *label_building_turns lobby_sidebar 2147483645
scoreboard players set *label_building_turns lobby_sidebar_red 2147483645
scoreboard players set *label_building_turns lobby_sidebar_orange 2147483645
scoreboard players set *label_building_turns lobby_sidebar_yellow 2147483645
scoreboard players set *label_building_turns lobby_sidebar_green 2147483645
scoreboard players set *label_building_turns lobby_sidebar_blue 2147483645
scoreboard players set *label_building_turns lobby_sidebar_purple 2147483645

scoreboard players set *label_redstone_turns lobby_sidebar 2147483644
scoreboard players set *label_redstone_turns lobby_sidebar_red 2147483644
scoreboard players set *label_redstone_turns lobby_sidebar_orange 2147483644
scoreboard players set *label_redstone_turns lobby_sidebar_yellow 2147483644
scoreboard players set *label_redstone_turns lobby_sidebar_green 2147483644
scoreboard players set *label_redstone_turns lobby_sidebar_blue 2147483644
scoreboard players set *label_redstone_turns lobby_sidebar_purple 2147483644

scoreboard players set *label_blank1 lobby_sidebar 2147483643
scoreboard players set *label_blank1 lobby_sidebar_red 2147483643
scoreboard players set *label_blank1 lobby_sidebar_orange 2147483643
scoreboard players set *label_blank1 lobby_sidebar_yellow 2147483643
scoreboard players set *label_blank1 lobby_sidebar_green 2147483643
scoreboard players set *label_blank1 lobby_sidebar_blue 2147483643
scoreboard players set *label_blank1 lobby_sidebar_purple 2147483643

scoreboard players set *label_online_players lobby_sidebar 2147483642
scoreboard players set *label_online_players lobby_sidebar_red 2147483642
scoreboard players set *label_online_players lobby_sidebar_orange 2147483642
scoreboard players set *label_online_players lobby_sidebar_yellow 2147483642
scoreboard players set *label_online_players lobby_sidebar_green 2147483642
scoreboard players set *label_online_players lobby_sidebar_blue 2147483642
scoreboard players set *label_online_players lobby_sidebar_purple 2147483642

scoreboard players set *label_ready_players lobby_sidebar 2147483641
scoreboard players set *label_ready_players lobby_sidebar_red 2147483641
scoreboard players set *label_ready_players lobby_sidebar_orange 2147483641
scoreboard players set *label_ready_players lobby_sidebar_yellow 2147483641
scoreboard players set *label_ready_players lobby_sidebar_green 2147483641
scoreboard players set *label_ready_players lobby_sidebar_blue 2147483641
scoreboard players set *label_ready_players lobby_sidebar_purple 2147483641

scoreboard players set *label_blank2 lobby_sidebar 2147483640
scoreboard players set *label_blank2 lobby_sidebar_red 2147483640
scoreboard players set *label_blank2 lobby_sidebar_orange 2147483640
scoreboard players set *label_blank2 lobby_sidebar_yellow 2147483640
scoreboard players set *label_blank2 lobby_sidebar_green 2147483640
scoreboard players set *label_blank2 lobby_sidebar_blue 2147483640
scoreboard players set *label_blank2 lobby_sidebar_purple 2147483640

scoreboard players set *label_my_team lobby_sidebar 2147483639
scoreboard players set *label_my_team lobby_sidebar_red 2147483639
scoreboard players set *label_my_team lobby_sidebar_orange 2147483639
scoreboard players set *label_my_team lobby_sidebar_yellow 2147483639
scoreboard players set *label_my_team lobby_sidebar_green 2147483639
scoreboard players set *label_my_team lobby_sidebar_blue 2147483639
scoreboard players set *label_my_team lobby_sidebar_purple 2147483639

scoreboard players set *label_active_teams lobby_sidebar 2147483638
scoreboard players set *label_active_teams lobby_sidebar_red 2147483638
scoreboard players set *label_active_teams lobby_sidebar_orange 2147483638
scoreboard players set *label_active_teams lobby_sidebar_yellow 2147483638
scoreboard players set *label_active_teams lobby_sidebar_green 2147483638
scoreboard players set *label_active_teams lobby_sidebar_blue 2147483638
scoreboard players set *label_active_teams lobby_sidebar_purple 2147483638

scoreboard players reset *label_blank3 lobby_sidebar
scoreboard players reset *label_blank3 lobby_sidebar_red
scoreboard players reset *label_blank3 lobby_sidebar_orange
scoreboard players reset *label_blank3 lobby_sidebar_yellow
scoreboard players reset *label_blank3 lobby_sidebar_green
scoreboard players reset *label_blank3 lobby_sidebar_blue
scoreboard players reset *label_blank3 lobby_sidebar_purple

scoreboard players reset *label_red_team_score lobby_sidebar
scoreboard players reset *label_orange_team_score lobby_sidebar
scoreboard players reset *label_yellow_team_score lobby_sidebar
scoreboard players reset *label_green_team_score lobby_sidebar
scoreboard players reset *label_blue_team_score lobby_sidebar
scoreboard players reset *label_purple_team_score lobby_sidebar

scoreboard players reset *label_red_team_score lobby_sidebar_red
scoreboard players reset *label_orange_team_score lobby_sidebar_red
scoreboard players reset *label_yellow_team_score lobby_sidebar_red
scoreboard players reset *label_green_team_score lobby_sidebar_red
scoreboard players reset *label_blue_team_score lobby_sidebar_red
scoreboard players reset *label_purple_team_score lobby_sidebar_red

scoreboard players reset *label_red_team_score lobby_sidebar_orange
scoreboard players reset *label_orange_team_score lobby_sidebar_orange
scoreboard players reset *label_yellow_team_score lobby_sidebar_orange
scoreboard players reset *label_green_team_score lobby_sidebar_orange
scoreboard players reset *label_blue_team_score lobby_sidebar_orange
scoreboard players reset *label_purple_team_score lobby_sidebar_orange

scoreboard players reset *label_red_team_score lobby_sidebar_yellow
scoreboard players reset *label_orange_team_score lobby_sidebar_yellow
scoreboard players reset *label_yellow_team_score lobby_sidebar_yellow
scoreboard players reset *label_green_team_score lobby_sidebar_yellow
scoreboard players reset *label_blue_team_score lobby_sidebar_yellow
scoreboard players reset *label_purple_team_score lobby_sidebar_yellow

scoreboard players reset *label_red_team_score lobby_sidebar_green
scoreboard players reset *label_orange_team_score lobby_sidebar_green
scoreboard players reset *label_yellow_team_score lobby_sidebar_green
scoreboard players reset *label_green_team_score lobby_sidebar_green
scoreboard players reset *label_blue_team_score lobby_sidebar_green
scoreboard players reset *label_purple_team_score lobby_sidebar_green

scoreboard players reset *label_red_team_score lobby_sidebar_blue
scoreboard players reset *label_orange_team_score lobby_sidebar_blue
scoreboard players reset *label_yellow_team_score lobby_sidebar_blue
scoreboard players reset *label_green_team_score lobby_sidebar_blue
scoreboard players reset *label_blue_team_score lobby_sidebar_blue
scoreboard players reset *label_purple_team_score lobby_sidebar_blue

scoreboard players reset *label_red_team_score lobby_sidebar_purple
scoreboard players reset *label_orange_team_score lobby_sidebar_purple
scoreboard players reset *label_yellow_team_score lobby_sidebar_purple
scoreboard players reset *label_green_team_score lobby_sidebar_purple
scoreboard players reset *label_blue_team_score lobby_sidebar_purple
scoreboard players reset *label_purple_team_score lobby_sidebar_purple

scoreboard players display numberformat *label_you_are_at_lobby lobby_sidebar blank
scoreboard players display numberformat *label_you_are_at_lobby lobby_sidebar_red blank
scoreboard players display numberformat *label_you_are_at_lobby lobby_sidebar_orange blank
scoreboard players display numberformat *label_you_are_at_lobby lobby_sidebar_yellow blank
scoreboard players display numberformat *label_you_are_at_lobby lobby_sidebar_green blank
scoreboard players display numberformat *label_you_are_at_lobby lobby_sidebar_blue blank
scoreboard players display numberformat *label_you_are_at_lobby lobby_sidebar_purple blank

scoreboard players display numberformat *label_blank0 lobby_sidebar blank
scoreboard players display numberformat *label_blank0 lobby_sidebar_red blank
scoreboard players display numberformat *label_blank0 lobby_sidebar_orange blank
scoreboard players display numberformat *label_blank0 lobby_sidebar_yellow blank
scoreboard players display numberformat *label_blank0 lobby_sidebar_green blank
scoreboard players display numberformat *label_blank0 lobby_sidebar_blue blank
scoreboard players display numberformat *label_blank0 lobby_sidebar_purple blank

scoreboard players display numberformat *label_building_turns lobby_sidebar blank
scoreboard players display numberformat *label_building_turns lobby_sidebar_red blank
scoreboard players display numberformat *label_building_turns lobby_sidebar_orange blank
scoreboard players display numberformat *label_building_turns lobby_sidebar_yellow blank
scoreboard players display numberformat *label_building_turns lobby_sidebar_green blank
scoreboard players display numberformat *label_building_turns lobby_sidebar_blue blank
scoreboard players display numberformat *label_building_turns lobby_sidebar_purple blank

scoreboard players display numberformat *label_redstone_turns lobby_sidebar blank
scoreboard players display numberformat *label_redstone_turns lobby_sidebar_red blank
scoreboard players display numberformat *label_redstone_turns lobby_sidebar_orange blank
scoreboard players display numberformat *label_redstone_turns lobby_sidebar_yellow blank
scoreboard players display numberformat *label_redstone_turns lobby_sidebar_green blank
scoreboard players display numberformat *label_redstone_turns lobby_sidebar_blue blank
scoreboard players display numberformat *label_redstone_turns lobby_sidebar_purple blank

scoreboard players display numberformat *label_blank1 lobby_sidebar blank
scoreboard players display numberformat *label_blank1 lobby_sidebar_red blank
scoreboard players display numberformat *label_blank1 lobby_sidebar_orange blank
scoreboard players display numberformat *label_blank1 lobby_sidebar_yellow blank
scoreboard players display numberformat *label_blank1 lobby_sidebar_green blank
scoreboard players display numberformat *label_blank1 lobby_sidebar_blue blank
scoreboard players display numberformat *label_blank1 lobby_sidebar_purple blank

scoreboard players display numberformat *label_online_players lobby_sidebar blank
scoreboard players display numberformat *label_online_players lobby_sidebar_red blank
scoreboard players display numberformat *label_online_players lobby_sidebar_orange blank
scoreboard players display numberformat *label_online_players lobby_sidebar_yellow blank
scoreboard players display numberformat *label_online_players lobby_sidebar_green blank
scoreboard players display numberformat *label_online_players lobby_sidebar_blue blank
scoreboard players display numberformat *label_online_players lobby_sidebar_purple blank

scoreboard players display numberformat *label_ready_players lobby_sidebar blank
scoreboard players display numberformat *label_ready_players lobby_sidebar_red blank
scoreboard players display numberformat *label_ready_players lobby_sidebar_orange blank
scoreboard players display numberformat *label_ready_players lobby_sidebar_yellow blank
scoreboard players display numberformat *label_ready_players lobby_sidebar_green blank
scoreboard players display numberformat *label_ready_players lobby_sidebar_blue blank
scoreboard players display numberformat *label_ready_players lobby_sidebar_purple blank

scoreboard players display numberformat *label_blank2 lobby_sidebar blank
scoreboard players display numberformat *label_blank2 lobby_sidebar_red blank
scoreboard players display numberformat *label_blank2 lobby_sidebar_orange blank
scoreboard players display numberformat *label_blank2 lobby_sidebar_yellow blank
scoreboard players display numberformat *label_blank2 lobby_sidebar_green blank
scoreboard players display numberformat *label_blank2 lobby_sidebar_blue blank
scoreboard players display numberformat *label_blank2 lobby_sidebar_purple blank

scoreboard players display numberformat *label_my_team lobby_sidebar blank
scoreboard players display numberformat *label_my_team lobby_sidebar_red blank
scoreboard players display numberformat *label_my_team lobby_sidebar_orange blank
scoreboard players display numberformat *label_my_team lobby_sidebar_yellow blank
scoreboard players display numberformat *label_my_team lobby_sidebar_green blank
scoreboard players display numberformat *label_my_team lobby_sidebar_blue blank
scoreboard players display numberformat *label_my_team lobby_sidebar_purple blank

scoreboard players display numberformat *label_active_teams lobby_sidebar blank
scoreboard players display numberformat *label_active_teams lobby_sidebar_red blank
scoreboard players display numberformat *label_active_teams lobby_sidebar_orange blank
scoreboard players display numberformat *label_active_teams lobby_sidebar_yellow blank
scoreboard players display numberformat *label_active_teams lobby_sidebar_green blank
scoreboard players display numberformat *label_active_teams lobby_sidebar_blue blank
scoreboard players display numberformat *label_active_teams lobby_sidebar_purple blank

# clear interaction data
data remove entity @e[tag=building_turns_button, limit=1, sort=nearest] interaction
data remove entity @e[tag=redstone_turns_button, limit=1, sort=nearest] interaction
data remove entity @e[tag=start_game_button, limit=1, sort=nearest] interaction

spawnpoint @a 55 64 6 90 0

tp @a 55 64 6 90 0

clear @a
gamemode adventure @a

execute \
    as @a run \
        function builder_and_redstoner:actions/set_effects

bossbar set builder_and_redstoner:current_turn visible false

time set day
weather clear

execute as @a run attribute @s minecraft:attack_damage base set 1

loot replace entity @a enderchest.0 loot builder_and_redstoner:blocks/get_my_head

execute \
    unless data storage builder_and_redstoner:config {config: {status: "LOBBY"}} run \
        data modify storage builder_and_redstoner:config config.status set value "LOBBY"