# check if player dies and run on_player_die
execute \
    as @e[sort=arbitrary,type=minecraft:player] \
    if score @s death_check matches 1.. run \
        function builder_and_redstoner:events/on_player_die
execute \
    as @a[sort=arbitrary] \
    unless score @s join matches 1.. run \
        function builder_and_redstoner:events/on_player_join

execute \
    store result score #curr_online temp \
        if entity @a[sort=arbitrary]
execute \
    if score #curr_online temp < #online player_count run \
        function builder_and_redstoner:events/on_player_exit
execute \
    if score #curr_online temp < #online player_count run \
        scoreboard players reset * join
execute \
    if score #curr_online temp < #online player_count run \
        scoreboard players set @a[sort=arbitrary] join 1
execute \
    if score #curr_online temp < #online player_count run \
        scoreboard players operation #online player_count = #curr_online temp

execute \
    if data storage builder_and_redstoner:config {config: {status: "LOBBY"}} run \
        function builder_and_redstoner:control/at_lobby

execute \
    if data storage builder_and_redstoner:config {config: {status: "PREPARING"}} run \
        function builder_and_redstoner:control/at_preparing

execute \
    if data storage builder_and_redstoner:config {config: {status: "SELECTING"}} run \
        function builder_and_redstoner:control/at_selecting

execute \
    if data storage builder_and_redstoner:config {config: {status: "GAMING"}} run \
        function builder_and_redstoner:control/at_gaming with entity @n[tag=memory_entity, type=marker] data

execute \
    if data storage builder_and_redstoner:config {config: {status: "ENDTURN"}} run \
        function builder_and_redstoner:control/at_endturn

execute \
    if data storage builder_and_redstoner:config {config: {status: "VOTING"}} run \
        function builder_and_redstoner:control/at_voting

execute \
    if data storage builder_and_redstoner:config {config: {status: "TESTING"}} run \
        function builder_and_redstoner:control/at_testing

execute \
    if data storage builder_and_redstoner:config {config: {status: "REWARDING"}} run \
        function builder_and_redstoner:control/at_rewarding