execute as @s[gamemode=!spectator] run gamemode spectator @s

$execute unless data entity @n[tag=memory_entity, type=marker] data.spectating.$(name).name run data modify entity @n[tag=memory_entity, type=marker] data.spectating.$(name).name set from entity @r[team=!, limit=1] EnderItems[0].components."minecraft:profile".name

tag @s add self
$execute if data entity @n[tag=memory_entity, type=marker] data.spectating.$(name).name run data modify entity @n[tag=memory_entity, type=marker] data.spectating.$(name).name set from entity @p[team=!, tag=!self] EnderItems[0].components."minecraft:profile".name
tag @s remove self

$execute if data entity @n[tag=memory_entity, type=marker] data.spectating.$(name).name run function builder_and_redstoner:actions/execute_spectate_command with entity @n[tag=memory_entity, type=marker] data.spectating.$(name)