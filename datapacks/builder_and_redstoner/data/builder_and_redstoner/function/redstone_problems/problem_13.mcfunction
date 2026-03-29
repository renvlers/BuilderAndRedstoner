data modify storage builder_and_redstoner:problems problems append value { \
    id: 13, \
    title: "混入其中的透明方块", \
    description: "方块的透明性分为物理学透明、视觉透明和光学透明三种。如果一个方块不能传导红石信号，则这个方块是物理学透明的；如果玩家能透过一个方块看到后面的场景，则这个方块是视觉透明的；如果一个方块不能完全阻挡光照，则这个方块是光学透明的。给定一些方块，判断其中是否混入了物理学透明和光学透明方块。", \
    input: "使用 6~11 号输入位，绿宝石块上方会放置不同种类的方块，题目保证所有方块的碰撞箱和轮廓箱都是完整的，且可以被黏性活塞拉动。", \
    output: "使用 8 号和 9 号输出位，如果给定的方块中存在物理学透明方块，则在 8 号输出位的钻石块上方放置一个黄绿色混凝土，否则放置一个红色混凝土；如果给定的方块中存在光学透明方块，则在 9 号输出位的钻石块上方放置一个黄绿色混凝土，否则放置一个红色混凝土。", \
    tests: [ \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:stone", block_state: "", block_entity: {} }, \
                { block: "minecraft:dirt", block_state: "", block_entity: {} }, \
                { block: "minecraft:iron_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:gold_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:diamond_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:emerald_block", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:red_concrete", block_state: "", block_entity: {} }, \
                { block: "minecraft:red_concrete", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:cobblestone", block_state: "", block_entity: {} }, \
                { block: "minecraft:bricks", block_state: "", block_entity: {} }, \
                { block: "minecraft:sandstone", block_state: "", block_entity: {} }, \
                { block: "minecraft:andesite", block_state: "", block_entity: {} }, \
                { block: "minecraft:netherrack", block_state: "", block_entity: {} }, \
                { block: "minecraft:glass", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:lime_concrete", block_state: "", block_entity: {} }, \
                { block: "minecraft:lime_concrete", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:copper_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:coal_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:amethyst_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:smooth_basalt", block_state: "", block_entity: {} }, \
                { block: "minecraft:deepslate", block_state: "", block_entity: {} }, \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:lime_concrete", block_state: "", block_entity: {} }, \
                { block: "minecraft:red_concrete", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:quartz_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:tinted_glass", block_state: "", block_entity: {} }, \
                { block: "minecraft:end_stone", block_state: "", block_entity: {} }, \
                { block: "minecraft:prismarine", block_state: "", block_entity: {} }, \
                { block: "minecraft:dark_prismarine", block_state: "", block_entity: {} }, \
                { block: "minecraft:purpur_block", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:lime_concrete", block_state: "", block_entity: {} }, \
                { block: "minecraft:red_concrete", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:redstone_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:ice", block_state: "", block_entity: {} }, \
                { block: "minecraft:glass", block_state: "", block_entity: {} }, \
                { block: "minecraft:tinted_glass", block_state: "", block_entity: {} }, \
                { block: "minecraft:blue_stained_glass", block_state: "", block_entity: {} }, \
                { block: "minecraft:purple_stained_glass", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:lime_concrete", block_state: "", block_entity: {} }, \
                { block: "minecraft:lime_concrete", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:oak_planks", block_state: "", block_entity: {} }, \
                { block: "minecraft:packed_ice", block_state: "", block_entity: {} }, \
                { block: "minecraft:sponge", block_state: "", block_entity: {} }, \
                { block: "minecraft:wet_sponge", block_state: "", block_entity: {} }, \
                { block: "minecraft:lapis_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:clay", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:red_concrete", block_state: "", block_entity: {} }, \
                { block: "minecraft:red_concrete", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:magenta_wool", block_state: "", block_entity: {} }, \
                { block: "minecraft:orange_wool", block_state: "", block_entity: {} }, \
                { block: "minecraft:slime_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:lime_wool", block_state: "", block_entity: {} }, \
                { block: "minecraft:pink_wool", block_state: "", block_entity: {} }, \
                { block: "minecraft:yellow_wool", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:red_concrete", block_state: "", block_entity: {} }, \
                { block: "minecraft:lime_concrete", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:white_concrete", block_state: "", block_entity: {} }, \
                { block: "minecraft:black_concrete", block_state: "", block_entity: {} }, \
                { block: "minecraft:gray_concrete", block_state: "", block_entity: {} }, \
                { block: "minecraft:honey_block", block_state: "", block_entity: {} }, \
                { block: "minecraft:cyan_concrete", block_state: "", block_entity: {} }, \
                { block: "minecraft:light_gray_concrete", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:lime_concrete", block_state: "", block_entity: {} }, \
                { block: "minecraft:lime_concrete", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:glass", block_state: "", block_entity: {} }, \
                { block: "minecraft:white_stained_glass", block_state: "", block_entity: {} }, \
                { block: "minecraft:orange_stained_glass", block_state: "", block_entity: {} }, \
                { block: "minecraft:magenta_stained_glass", block_state: "", block_entity: {} }, \
                { block: "minecraft:light_blue_stained_glass", block_state: "", block_entity: {} }, \
                { block: "minecraft:yellow_stained_glass", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:lime_concrete", block_state: "", block_entity: {} }, \
                { block: "minecraft:lime_concrete", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        }, \
        { \
            input: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:oak_log", block_state: "", block_entity: {} }, \
                { block: "minecraft:spruce_log", block_state: "", block_entity: {} }, \
                { block: "minecraft:birch_log", block_state: "", block_entity: {} }, \
                { block: "minecraft:jungle_log", block_state: "", block_entity: {} }, \
                { block: "minecraft:acacia_log", block_state: "", block_entity: {} }, \
                { block: "minecraft:dark_oak_log", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ], \
            output: [ \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, \
                { block: "minecraft:red_concrete", block_state: "", block_entity: {} }, \
                { block: "minecraft:red_concrete", block_state: "", block_entity: {} }, \
                { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" }, { block: "any" } \
            ] \
        } \
    ] \
}