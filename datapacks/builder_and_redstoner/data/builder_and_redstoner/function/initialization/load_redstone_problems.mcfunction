data remove storage builder_and_redstoner:problems problems

data merge storage builder_and_redstoner:problems { \
    max_idx: 13, \
}

function builder_and_redstoner:redstone_problems/utils/init_scoreboard with storage builder_and_redstoner:problems

data modify entity @n[tag=memory_entity, type=marker] data.redstone_problems_loader_counter set value 0
scoreboard players reset #redstone_problems_loader_counter counter
function builder_and_redstoner:redstone_problems/utils/redstone_problems_loader with entity @n[tag=memory_entity, type=marker] data