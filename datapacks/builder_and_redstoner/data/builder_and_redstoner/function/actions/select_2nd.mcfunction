scoreboard players reset #has_second temp

execute if score #red rank matches 2 run execute as @a[team=red] run function builder_and_redstoner:actions/tp_2nd
execute if score #orange rank matches 2 run execute as @a[team=orange] run function builder_and_redstoner:actions/tp_2nd
execute if score #yellow rank matches 2 run execute as @a[team=yellow] run function builder_and_redstoner:actions/tp_2nd
execute if score #green rank matches 2 run execute as @a[team=green] run function builder_and_redstoner:actions/tp_2nd
execute if score #blue rank matches 2 run execute as @a[team=blue] run function builder_and_redstoner:actions/tp_2nd
execute if score #purple rank matches 2 run execute as @a[team=purple] run function builder_and_redstoner:actions/tp_2nd

execute if score #has_second temp matches 1.. run tellraw @a [ \
    {text:"恭喜", color:"#FCFCFC", bold:true}, \
    {type:"nbt",nbt:"data.second",separator:"",interpret:true,storage:"builder_and_redstoner:memory"}, \
    {text:"获得亚军", color:"#FCFCFC", bold:true}, \
]

summon minecraft:firework_rocket 46 68 12 { \
    LifeTime: 0, \
    FireworksItem: { \
        id: "minecraft:firework_rocket", \
        count: 1b, \
        components: { \
            "minecraft:fireworks": { \
                explosions: [ \
                    { \
                        colors: [16579836], \
                        fade_colors: [15790320], \
                        shape: "star" \
                    } \
                ] \
            } \
        } \
    } \
}