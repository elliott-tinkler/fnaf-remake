# reset timer
scoreboard players set .foxy timer 0

# roll random
execute store result score 1..20 random run random value 1..20
