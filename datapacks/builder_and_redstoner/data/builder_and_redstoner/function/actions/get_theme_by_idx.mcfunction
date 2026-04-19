$execute \
    unless data storage builder_and_redstoner:memory {data: {selected_themes: [{id: $(random_theme_idx)}]}} run \
        scoreboard players add #prepared_themes temp 1

$execute \
    unless data storage builder_and_redstoner:memory {data: {selected_themes: [{id: $(random_theme_idx)}]}} run \
        data modify storage builder_and_redstoner:memory data.selected_themes append from storage builder_and_redstoner:themes themes[$(random_theme_idx)]