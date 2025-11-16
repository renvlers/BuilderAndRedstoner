execute \
    if entity @e[tag=memory_entity] run \
        kill @e[tag=memory_entity]

execute \
    unless entity @e[tag=memory_entity] run \
        summon minecraft:interaction 0 0 0 { \
            Tags: ["memory_entity"], \
            NoGravity: true \
        }