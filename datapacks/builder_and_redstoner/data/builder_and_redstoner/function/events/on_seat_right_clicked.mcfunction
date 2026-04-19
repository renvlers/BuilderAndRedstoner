data modify storage builder_and_redstoner:memory data.seat_interation_tag set from entity @s Tags[1]
function builder_and_redstoner:actions/sit with storage builder_and_redstoner:memory data
data remove storage builder_and_redstoner:memory data.seat_interation_tag

data remove entity @s interaction