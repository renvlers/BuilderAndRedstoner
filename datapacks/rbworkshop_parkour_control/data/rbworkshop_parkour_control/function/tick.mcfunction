execute unless data storage builder_and_redstoner:config {config: {status: "LOBBY"}} run return fail

execute if block 175 112 -49 minecraft:stone_button[powered=true] run function rbworkshop_parkour_control:events/on_platform_0_button_click

execute as @n[tag=parkour_back_to_lobby, sort=arbitrary, type=interaction] at @s on target run function rbworkshop_parkour_control:events/on_parkour_back_to_lobby_click
execute as @n[tag=parkour_back_to_lobby, sort=arbitrary, type=interaction] at @s run data remove entity @s interaction

execute as @a[tag=!parkour_participant, x=114, y=62, z=-61, dx=64, dy=182, dz=134] at @s run function rbworkshop_parkour_control:actions/start_parkour

execute as @a[tag=parkour_participant, tag=!parkour_winner] at @s run function rbworkshop_parkour_control:actions/update_timer

# update checkpoints
execute as @a[tag=parkour_participant, tag=!parkour_winner, x=115, y=63, z=7, dx=2, dy=0, dz=2] if score @s parkour_checkpoint matches 0 at @s run function rbworkshop_parkour_control:actions/set_checkpoint { "checkpoint": 1 }
execute as @a[tag=parkour_participant, tag=!parkour_winner, x=135, y=95, z=3, dx=2, dy=0, dz=2] if score @s parkour_checkpoint matches 1 at @s run function rbworkshop_parkour_control:actions/set_checkpoint { "checkpoint": 2 }
execute as @a[tag=parkour_participant, tag=!parkour_winner, x=116, y=89, z=-32, dx=2, dy=0, dz=2] if score @s parkour_checkpoint matches 2 at @s run function rbworkshop_parkour_control:actions/set_checkpoint { "checkpoint": 3 }
execute as @a[tag=parkour_participant, tag=!parkour_winner, x=147, y=81, z=-44, dx=2, dy=0, dz=2] if score @s parkour_checkpoint matches 3 at @s run function rbworkshop_parkour_control:actions/set_checkpoint { "checkpoint": 4 }
execute as @a[tag=parkour_participant, tag=!parkour_winner, x=159, y=89, z=-28, dx=2, dy=0, dz=2] if score @s parkour_checkpoint matches 4 at @s run function rbworkshop_parkour_control:actions/set_checkpoint { "checkpoint": 5 }
execute as @a[tag=parkour_participant, tag=!parkour_winner, x=163, y=96, z=-24, dx=2, dy=0, dz=2] if score @s parkour_checkpoint matches 5 at @s run function rbworkshop_parkour_control:actions/set_checkpoint { "checkpoint": 6 }
execute as @a[tag=parkour_participant, tag=!parkour_winner, x=175, y=113, z=-32, dx=2, dy=0, dz=2] if score @s parkour_checkpoint matches 6 at @s run function rbworkshop_parkour_control:actions/set_checkpoint { "checkpoint": 7 }
execute as @a[tag=parkour_participant, tag=!parkour_winner, x=167, y=116, z=-28, dx=2, dy=0, dz=2] if score @s parkour_checkpoint matches 7 at @s run function rbworkshop_parkour_control:actions/set_checkpoint { "checkpoint": 8 }
execute as @a[tag=parkour_participant, tag=!parkour_winner, x=159, y=112, z=-24, dx=2, dy=0, dz=2] if score @s parkour_checkpoint matches 8 at @s run function rbworkshop_parkour_control:actions/set_checkpoint { "checkpoint": 9 }
execute as @a[tag=parkour_participant, tag=!parkour_winner, x=163, y=112, z=-20, dx=2, dy=0, dz=2] if score @s parkour_checkpoint matches 9 at @s run function rbworkshop_parkour_control:actions/set_checkpoint { "checkpoint": 10 }
execute as @a[tag=parkour_participant, tag=!parkour_winner, x=175, y=123, z=7, dx=2, dy=0, dz=2] if score @s parkour_checkpoint matches 10 at @s run function rbworkshop_parkour_control:actions/set_checkpoint { "checkpoint": 11 }
execute as @a[tag=parkour_participant, tag=!parkour_winner, x=171, y=132, z=42, dx=2, dy=0, dz=2] if score @s parkour_checkpoint matches 11 at @s run function rbworkshop_parkour_control:actions/set_checkpoint { "checkpoint": 12 }
execute as @a[tag=parkour_participant, tag=!parkour_winner, x=163, y=99, z=62, dx=2, dy=0, dz=2] if score @s parkour_checkpoint matches 12 at @s run function rbworkshop_parkour_control:actions/set_checkpoint { "checkpoint": 13 }
execute as @a[tag=parkour_participant, tag=!parkour_winner, x=143, y=120, z=70, dx=2, dy=0, dz=2] if score @s parkour_checkpoint matches 13 at @s run function rbworkshop_parkour_control:actions/set_checkpoint { "checkpoint": 14 }
execute as @a[tag=parkour_participant, tag=!parkour_winner, x=119, y=143, z=38, dx=2, dy=0, dz=2] if score @s parkour_checkpoint matches 14 at @s run function rbworkshop_parkour_control:actions/set_checkpoint { "checkpoint": 15 }
execute as @a[tag=parkour_participant, tag=!parkour_winner, x=139, y=189, z=3, dx=2, dy=0, dz=2] if score @s parkour_checkpoint matches 15 at @s run function rbworkshop_parkour_control:actions/set_checkpoint { "checkpoint": 16 }
execute as @a[tag=parkour_participant, tag=!parkour_winner, x=131, y=213, z=-32, dx=2, dy=0, dz=2] if score @s parkour_checkpoint matches 16 at @s run function rbworkshop_parkour_control:actions/set_checkpoint { "checkpoint": 17 }

execute as @a[tag=parkour_participant, tag=!parkour_winner] if score @s parkour_checkpoint matches 17 at @s run function rbworkshop_parkour_control:actions/finish_parkour

execute as @a[tag=parkour_participant] at @s run function rbworkshop_parkour_control:actions/show_info
execute as @a[tag=parkour_participant] unless entity @s[x=114, y=62, z=-61, dx=64, dy=182, dz=134] at @s run function rbworkshop_parkour_control:actions/exit_parkour