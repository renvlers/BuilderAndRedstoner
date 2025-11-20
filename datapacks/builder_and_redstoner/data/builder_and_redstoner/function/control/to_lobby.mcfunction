execute \
    unless data storage builder_and_redstoner:config {config: {status: "LOBBY"}} run \
        data modify storage builder_and_redstoner:config config.status set value "LOBBY"

# sidebar layout:
# divider
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
# divider
scoreboard objectives setdisplay sidebar lobby_sidebar
scoreboard objectives setdisplay sidebar.team.red lobby_sidebar_red
scoreboard objectives setdisplay sidebar.team.gold lobby_sidebar_orange
scoreboard objectives setdisplay sidebar.team.yellow lobby_sidebar_yellow
scoreboard objectives setdisplay sidebar.team.green lobby_sidebar_green
scoreboard objectives setdisplay sidebar.team.blue lobby_sidebar_blue
scoreboard objectives setdisplay sidebar.team.dark_purple lobby_sidebar_purple

scoreboard players set *label_divider lobby_sidebar 11
scoreboard players set *label_divider lobby_sidebar_red 11
scoreboard players set *label_divider lobby_sidebar_orange 11
scoreboard players set *label_divider lobby_sidebar_yellow 11
scoreboard players set *label_divider lobby_sidebar_green 11
scoreboard players set *label_divider lobby_sidebar_blue 11
scoreboard players set *label_divider lobby_sidebar_purple 11

scoreboard players set *label_you_are_at_lobby lobby_sidebar 10
scoreboard players set *label_you_are_at_lobby lobby_sidebar_red 10
scoreboard players set *label_you_are_at_lobby lobby_sidebar_orange 10
scoreboard players set *label_you_are_at_lobby lobby_sidebar_yellow 10
scoreboard players set *label_you_are_at_lobby lobby_sidebar_green 10
scoreboard players set *label_you_are_at_lobby lobby_sidebar_blue 10
scoreboard players set *label_you_are_at_lobby lobby_sidebar_purple 10

scoreboard players set *label_blank0 lobby_sidebar 9
scoreboard players set *label_blank0 lobby_sidebar_red 9
scoreboard players set *label_blank0 lobby_sidebar_orange 9
scoreboard players set *label_blank0 lobby_sidebar_yellow 9
scoreboard players set *label_blank0 lobby_sidebar_green 9
scoreboard players set *label_blank0 lobby_sidebar_blue 9
scoreboard players set *label_blank0 lobby_sidebar_purple 9

scoreboard players set *label_building_turns lobby_sidebar 8
scoreboard players set *label_building_turns lobby_sidebar_red 8
scoreboard players set *label_building_turns lobby_sidebar_orange 8
scoreboard players set *label_building_turns lobby_sidebar_yellow 8
scoreboard players set *label_building_turns lobby_sidebar_green 8
scoreboard players set *label_building_turns lobby_sidebar_blue 8
scoreboard players set *label_building_turns lobby_sidebar_purple 8

scoreboard players set *label_redstone_turns lobby_sidebar 7
scoreboard players set *label_redstone_turns lobby_sidebar_red 7
scoreboard players set *label_redstone_turns lobby_sidebar_orange 7
scoreboard players set *label_redstone_turns lobby_sidebar_yellow 7
scoreboard players set *label_redstone_turns lobby_sidebar_green 7
scoreboard players set *label_redstone_turns lobby_sidebar_blue 7
scoreboard players set *label_redstone_turns lobby_sidebar_purple 7

scoreboard players set *label_blank1 lobby_sidebar 6
scoreboard players set *label_blank1 lobby_sidebar_red 6
scoreboard players set *label_blank1 lobby_sidebar_orange 6
scoreboard players set *label_blank1 lobby_sidebar_yellow 6
scoreboard players set *label_blank1 lobby_sidebar_green 6
scoreboard players set *label_blank1 lobby_sidebar_blue 6
scoreboard players set *label_blank1 lobby_sidebar_purple 6

scoreboard players set *label_online_players lobby_sidebar 5
scoreboard players set *label_online_players lobby_sidebar_red 5
scoreboard players set *label_online_players lobby_sidebar_orange 5
scoreboard players set *label_online_players lobby_sidebar_yellow 5
scoreboard players set *label_online_players lobby_sidebar_green 5
scoreboard players set *label_online_players lobby_sidebar_blue 5
scoreboard players set *label_online_players lobby_sidebar_purple 5

scoreboard players set *label_ready_players lobby_sidebar 4
scoreboard players set *label_ready_players lobby_sidebar_red 4
scoreboard players set *label_ready_players lobby_sidebar_orange 4
scoreboard players set *label_ready_players lobby_sidebar_yellow 4
scoreboard players set *label_ready_players lobby_sidebar_green 4
scoreboard players set *label_ready_players lobby_sidebar_blue 4
scoreboard players set *label_ready_players lobby_sidebar_purple 4

scoreboard players set *label_blank2 lobby_sidebar 3
scoreboard players set *label_blank2 lobby_sidebar_red 3
scoreboard players set *label_blank2 lobby_sidebar_orange 3
scoreboard players set *label_blank2 lobby_sidebar_yellow 3
scoreboard players set *label_blank2 lobby_sidebar_green 3
scoreboard players set *label_blank2 lobby_sidebar_blue 3
scoreboard players set *label_blank2 lobby_sidebar_purple 3

scoreboard players set *label_my_team lobby_sidebar 2
scoreboard players set *label_my_team lobby_sidebar_red 2
scoreboard players set *label_my_team lobby_sidebar_orange 2
scoreboard players set *label_my_team lobby_sidebar_yellow 2
scoreboard players set *label_my_team lobby_sidebar_green 2
scoreboard players set *label_my_team lobby_sidebar_blue 2
scoreboard players set *label_my_team lobby_sidebar_purple 2

scoreboard players set *label_active_teams lobby_sidebar 1
scoreboard players set *label_active_teams lobby_sidebar_red 1
scoreboard players set *label_active_teams lobby_sidebar_orange 1
scoreboard players set *label_active_teams lobby_sidebar_yellow 1
scoreboard players set *label_active_teams lobby_sidebar_green 1
scoreboard players set *label_active_teams lobby_sidebar_blue 1
scoreboard players set *label_active_teams lobby_sidebar_purple 1

scoreboard players set *label_divider_bottom lobby_sidebar 0
scoreboard players set *label_divider_bottom lobby_sidebar_red 0
scoreboard players set *label_divider_bottom lobby_sidebar_orange 0
scoreboard players set *label_divider_bottom lobby_sidebar_yellow 0
scoreboard players set *label_divider_bottom lobby_sidebar_green 0
scoreboard players set *label_divider_bottom lobby_sidebar_blue 0
scoreboard players set *label_divider_bottom lobby_sidebar_purple 0

scoreboard players display numberformat * lobby_sidebar blank
scoreboard players display numberformat * lobby_sidebar_red blank
scoreboard players display numberformat * lobby_sidebar_orange blank
scoreboard players display numberformat * lobby_sidebar_yellow blank
scoreboard players display numberformat * lobby_sidebar_green blank
scoreboard players display numberformat * lobby_sidebar_blue blank
scoreboard players display numberformat * lobby_sidebar_purple blank

spawnpoint @a 52 64 6 -90 -28

tp @a 52 64 6 -90 -28

gamemode adventure @a

execute \
    as @a run \
        function builder_and_redstoner:actions/set_effects