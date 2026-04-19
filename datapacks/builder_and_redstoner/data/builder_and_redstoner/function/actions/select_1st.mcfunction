scoreboard players reset #has_first temp

execute if score #red rank matches 1 run execute as @a[team=red] run function builder_and_redstoner:actions/tp_1st
execute if score #orange rank matches 1 run execute as @a[team=orange] run function builder_and_redstoner:actions/tp_1st
execute if score #yellow rank matches 1 run execute as @a[team=yellow] run function builder_and_redstoner:actions/tp_1st
execute if score #green rank matches 1 run execute as @a[team=green] run function builder_and_redstoner:actions/tp_1st
execute if score #blue rank matches 1 run execute as @a[team=blue] run function builder_and_redstoner:actions/tp_1st
execute if score #purple rank matches 1 run execute as @a[team=purple] run function builder_and_redstoner:actions/tp_1st

execute if score #has_first temp matches 1.. run tellraw @a [ \
    {text:"恭喜", color:"#FAFC75", bold:true}, \
    {type:"nbt",nbt:"data.first",separator:"",interpret:true,storage:"builder_and_redstoner:memory"}, \
    {text:"获得冠军\n", color:"#FAFC75", bold:true}, \
]

tellraw @a [ \
    { \
        text: "                               ", \
        color: "white", \
        bold: true, \
        strikethrough: true \
    } \
]

summon minecraft:firework_rocket 46 68 6 { \
    LifeTime: 0, \
    FireworksItem: { \
        id: "minecraft:firework_rocket", \
        count: 1b, \
        components: { \
            "minecraft:fireworks": { \
                explosions: [ \
                    { \
                        colors: [16448629], \
                        fade_colors: [15790320], \
                        shape: "star" \
                    } \
                ] \
            } \
        } \
    } \
}