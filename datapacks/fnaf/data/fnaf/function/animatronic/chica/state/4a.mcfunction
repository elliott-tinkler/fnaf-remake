# either 1B or 4B

execute store result score 0..1 random run random value 0..1
execute if score 0..1 random matches 0 run scoreboard players set .chica state 1
execute if score 0..1 random matches 1 run scoreboard players set .chica state 5
function fnaf:animatronic/chica/update_position
