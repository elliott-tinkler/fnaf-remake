# after teleport buffer, make chica visible again
scoreboard players reset .chica_teleport_buffer timer
data modify entity @e[tag=chica, limit=1] equipment set from storage fnaf:animatronic chica.equipment
