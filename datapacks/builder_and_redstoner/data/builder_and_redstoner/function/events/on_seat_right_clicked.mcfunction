data modify entity @n[tag=memory_entity, sort=arbitrary, type=marker] data.seat_interation_tag set from entity @s Tags[1]
function builder_and_redstoner:actions/sit with entity @n[tag=memory_entity, sort=arbitrary, type=marker] data
data remove entity @n[tag=memory_entity, sort=arbitrary, type=marker] data.seat_interation_tag

data remove entity @s interaction