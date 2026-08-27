# either 1B or 2A

execute store result score 0..1 random run random value 0..1
execute if score 0..1 random matches 0 run scoreboard players set .bonnie state 1
execute if score 0..1 random matches 1 run scoreboard players set .bonnie state 3
function fnaf:animatronic/bonnie/update_position
