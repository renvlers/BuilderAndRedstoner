effect clear @s

execute \
if data storage builder_and_redstoner:config {config: {status: "LOBBY"}} run \
    effect give @s resistance infinite 255 true