clear @a[sort=arbitrary]

gamemode adventure @a[sort=arbitrary]
function builder_and_redstoner:actions/set_effects

function builder_and_redstoner:actions/start_game_timeleft

execute as @a[sort=arbitrary, tag=parkour_participant] run function rbworkshop_parkour_control:actions/exit_parkour

scoreboard players reset @a right_check

execute \
    unless data storage builder_and_redstoner:config {config: {status: "PREPARING"}} run \
        data modify storage builder_and_redstoner:config config.status set value "PREPARING"