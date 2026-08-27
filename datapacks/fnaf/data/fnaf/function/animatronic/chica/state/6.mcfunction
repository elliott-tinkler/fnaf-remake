# either 4A or 7

execute store result score 0..1 random run random value 0..1
execute if score 0..1 random matches 0 run scoreboard players set .chica state 3
execute if score 0..1 random matches 1 run scoreboard players set .chica state 4
function fnaf:animatronic/chica/update_position
