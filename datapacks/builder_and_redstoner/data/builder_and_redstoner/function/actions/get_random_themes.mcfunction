execute \
    unless score #prepared_themes temp matches 0..4 run \
        scoreboard players set #prepared_themes temp 0

$execute \
    store result entity @n[tag=memory_entity, type=interaction] data.random_theme_idx int 1 run \
        random value 0..$(max_idx)

function builder_and_redstoner:actions/get_theme_by_idx with entity @n[tag=memory_entity, type=interaction] data

execute \
    if score #prepared_themes temp matches 0..4 run \
        function builder_and_redstoner:actions/get_random_themes with storage builder_and_redstoner:themes