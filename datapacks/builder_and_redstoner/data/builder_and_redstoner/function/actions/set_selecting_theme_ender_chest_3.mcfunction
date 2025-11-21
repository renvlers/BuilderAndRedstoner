$execute \
    as @a \
    unless score @s selection matches 2 run \
        item replace entity @s enderchest.13 with red_stained_glass_pane[ \
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
            custom_data={theme: 2} \
        ]

$execute \
    as @a \
    if score @s selection matches 2 run \
        item replace entity @s enderchest.13 with lime_stained_glass_pane[ \
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
            custom_data={theme: 2} \
        ]