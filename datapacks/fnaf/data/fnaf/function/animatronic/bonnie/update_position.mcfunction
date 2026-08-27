scoreboard players set .bonnie_teleport_buffer timer 5
data modify entity @e[tag=bonnie, limit=1] equipment set value {}
execute if score .bonnie state matches 0 run tp @e[tag=bonnie, limit=1] @e[tag=bonnieroom0, limit=1]
execute if score .bonnie state matches 1 run tp @e[tag=bonnie, limit=1] @e[tag=bonnieroom1, limit=1]
execute if score .bonnie state matches 2 run tp @e[tag=bonnie, limit=1] @e[tag=bonnieroom2, limit=1]
execute if score .bonnie state matches 3 run tp @e[tag=bonnie, limit=1] @e[tag=bonnieroom3, limit=1]
execute if score .bonnie state matches 4 run tp @e[tag=bonnie, limit=1] @e[tag=bonnieroom4, limit=1]
execute if score .bonnie state matches 5 run tp @e[tag=bonnie, limit=1] @e[tag=bonnieroom5, limit=1]
execute if score .bonnie state matches 6 run tp @e[tag=bonnie, limit=1] @e[tag=bonnieroom6, limit=1]
