# reset timer
scoreboard players set .chica timer 0

# roll random
execute store result score 1..20 random run random value 1..20

execute if score .chica difficulty >= 1..20 random run function fnaf:animatronic/chica/success
