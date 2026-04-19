scoreboard players reset #has_third temp

execute if score #red rank matches 3 run execute as @a[team=red] run function builder_and_redstoner:actions/tp_3rd
execute if score #orange rank matches 3 run execute as @a[team=orange] run function builder_and_redstoner:actions/tp_3rd
execute if score #yellow rank matches 3 run execute as @a[team=yellow] run function builder_and_redstoner:actions/tp_3rd
execute if score #green rank matches 3 run execute as @a[team=green] run function builder_and_redstoner:actions/tp_3rd
execute if score #blue rank matches 3 run execute as @a[team=blue] run function builder_and_redstoner:actions/tp_3rd
execute if score #purple rank matches 3 run execute as @a[team=purple] run function builder_and_redstoner:actions/tp_3rd

execute if score #has_third temp matches 1.. run tellraw @a [ \
    {text:"恭喜", color:"#F99780", bold:true}, \
    {type:"nbt",nbt:"data.third",separator:"",interpret:true,storage:"builder_and_redstoner:memory"}, \
    {text:"获得季军", color:"#F99780", bold:true}, \
]

summon minecraft:firework_rocket 46 68 0 { \
    LifeTime: 0, \
    FireworksItem: { \
        id: "minecraft:firework_rocket", \
        count: 1b, \
        components: { \
            "minecraft:fireworks": { \
                explosions: [ \
                    { \
                        colors: [16357248], \
                        fade_colors: [15790320], \
                        shape: "star" \
                    } \
                ] \
            } \
        } \
    } \
}