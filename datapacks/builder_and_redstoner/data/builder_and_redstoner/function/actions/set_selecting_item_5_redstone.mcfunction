$execute unless score @s selection matches 4 run item replace entity @s container.6 with warped_fungus_on_a_stick[ \
            item_name=[ \
                { \
                    text: "【未选择】", \
                    color: "red", \
                    bold: true \
                }, \
                { \
                    text: "$(title)", \
                    color: "#CCFF99", \
                    bold: true \
                } \
            ], \
            custom_data={theme: 4}, \
            item_model=red_stained_glass_pane \
        ]

$execute if score @s selection matches 4 run item replace entity @s container.6 with warped_fungus_on_a_stick[ \
            item_name=[ \
                { \
                    text: "【已选择】", \
                    color: "green", \
                    bold: true \
                }, \
                { \
                    text: "$(title)", \
                    color: "#CCFF99", \
                    bold: true \
                } \
            ], \
            custom_data={theme: 4}, \
            item_model=lime_stained_glass_pane \
        ]
