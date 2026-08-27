# reset timer
scoreboard players set .bonnie timer 0

# roll random
execute store result score 1..20 random run random value 1..20

execute if score .bonnie difficulty >= 1..20 random run function fnaf:animatronic/bonnie/success
