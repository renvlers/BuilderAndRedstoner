execute \
    unless data storage builder_and_redstoner:config {config: {status: "LOBBY"}} run \
        data modify storage builder_and_redstoner:config config.status set value "LOBBY"

spawnpoint @a 52 64 6 -90 -6.4

tp @a 52 64 6 -90 -6.4

gamemode adventure @a

execute \
    as @a run \
        function builder_and_redstoner:actions/set_effects