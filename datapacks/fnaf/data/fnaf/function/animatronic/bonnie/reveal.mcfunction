# after teleport buffer, make bonnie visible again
scoreboard players reset .bonnie_teleport_buffer timer
data modify entity @e[tag=bonnie, limit=1] equipment set from storage fnaf:animatronic bonnie.equipment
