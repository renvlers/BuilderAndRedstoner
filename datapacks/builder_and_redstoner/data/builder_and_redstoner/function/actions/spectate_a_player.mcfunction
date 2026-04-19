execute as @s[gamemode=!spectator] run gamemode spectator @s

$execute unless data storage builder_and_redstoner:memory data.spectating.$(name).name run data modify storage builder_and_redstoner:memory data.spectating.$(name).name set from entity @r[team=!, limit=1] EnderItems[0].components."minecraft:profile".name

tag @s add self
$execute if data storage builder_and_redstoner:memory data.spectating.$(name).name run data modify storage builder_and_redstoner:memory data.spectating.$(name).name set from entity @p[team=!, tag=!self] EnderItems[0].components."minecraft:profile".name
tag @s remove self

$execute if data storage builder_and_redstoner:memory data.spectating.$(name).name run function builder_and_redstoner:actions/execute_spectate_command with storage builder_and_redstoner:memory data.spectating.$(name)