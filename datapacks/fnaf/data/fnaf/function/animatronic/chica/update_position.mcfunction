scoreboard players set .chica_teleport_buffer timer 5
data modify entity @e[tag=chica, limit=1] equipment set value {}
execute if score .chica state matches 0 run tp @e[tag=chica, limit=1] @e[tag=chicaroom0, limit=1]
execute if score .chica state matches 1 run tp @e[tag=chica, limit=1] @e[tag=chicaroom1, limit=1]
execute if score .chica state matches 2 run tp @e[tag=chica, limit=1] @e[tag=chicaroom2, limit=1]
execute if score .chica state matches 3 run tp @e[tag=chica, limit=1] @e[tag=chicaroom3, limit=1]
execute if score .chica state matches 4 run tp @e[tag=chica, limit=1] @e[tag=chicaroom4, limit=1]
execute if score .chica state matches 5 run tp @e[tag=chica, limit=1] @e[tag=chicaroom5, limit=1]
execute if score .chica state matches 6 run tp @e[tag=chica, limit=1] @e[tag=chicaroom6, limit=1]
