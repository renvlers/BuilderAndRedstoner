# check if player dies and run on_player_death
execute \
    as @e[type=minecraft:player] \
    if score @s death_check matches 1.. run \
        function builder_and_redstoner:events/on_player_death
execute \
    as @e[type=minecraft:player] \
    if score @s death_check matches 1.. run \
        scoreboard players set @s death_check 0

execute \
    as @a \
    unless score @s join matches 1.. run \
        function builder_and_redstoner:events/on_player_join
execute \
    as @a \
    unless score @s join matches 1.. run \
        scoreboard players add #online player_count 1
execute \
    as @a \
    unless score @s join matches 1.. run \
        scoreboard players set @s join 1

execute \
    as @a \
    if score @s leave matches 1.. run \
        function builder_and_redstoner:events/on_player_rejoin

execute \
    if data storage builder_and_redstoner:config {config: {status: "LOBBY"}} run \
        function builder_and_redstoner:control/at_lobby

execute \
    if data storage builder_and_redstoner:config {config: {status: "SELECTING"}} run \
        function builder_and_redstoner:control/at_selecting

execute \
    if data storage builder_and_redstoner:config {config: {status: "GAMING"}} run \
        function builder_and_redstoner:control/at_gaming

execute \
    if data storage builder_and_redstoner:config {config: {status: "VOTING"}} run \
        function builder_and_redstoner:control/at_voting

execute \
    if data storage builder_and_redstoner:config {config: {status: "TESTING"}} run \
        function builder_and_redstoner:control/at_testing

execute \
    if data storage builder_and_redstoner:config {config: {status: "ENDTURN"}} run \
        function builder_and_redstoner:control/at_endturn

execute \
    if data storage builder_and_redstoner:config {config: {status: "REWARDING"}} run \
        function builder_and_redstoner:control/at_rewarding

execute \
    as @a \
    if score @s right_check matches 1.. run \
        function builder_and_redstoner:events/on_player_rightclick
execute \
    as @a \
    if score @s right_check matches 1.. run \
        scoreboard players reset @s right_check