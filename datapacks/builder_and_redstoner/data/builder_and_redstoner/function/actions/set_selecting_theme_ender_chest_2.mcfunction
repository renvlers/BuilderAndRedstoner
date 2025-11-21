$execute \
    as @a \
    unless score @s selection matches 1 run \
        item replace entity @s enderchest.12 with red_stained_glass_pane[ \
            item_name=[ \
                { \
                    text: "【未选择】", \
                    color: "red", \
                    bold: true \
                }, \
                { \
                    text: "$(name)", \
                    color: "#CCFF99", \
                    bold: true \
                } \
            ], \
            custom_data={theme: 1} \
        ]

$execute \
    as @a \
    if score @s selection matches 1 run \
        item replace entity @s enderchest.12 with lime_stained_glass_pane[ \
            item_name=[ \
                { \
                    text: "【已选择】", \
                    color: "green", \
                    bold: true \
                }, \
                { \
                    text: "$(name)", \
                    color: "#CCFF99", \
                    bold: true \
                } \
            ], \
            custom_data={theme: 1} \
        ]