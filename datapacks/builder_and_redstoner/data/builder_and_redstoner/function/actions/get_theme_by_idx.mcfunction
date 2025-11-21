$execute \
    unless data entity @n[tag=memory_entity, type=interaction] {data: {selected_themes: [{id: $(random_theme_idx)}]}} run \
        scoreboard players add #prepared_themes temp 1

$execute \
    unless data entity @n[tag=memory_entity, type=interaction] {data: {selected_themes: [{id: $(random_theme_idx)}]}} run \
        data modify entity @n[tag=memory_entity, type=interaction] data.selected_themes append from storage builder_and_redstoner:themes themes[$(random_theme_idx)]