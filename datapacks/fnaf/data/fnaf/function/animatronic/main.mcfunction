# this function runs every 20 ticks

# Movement opportunity intervals:
# Freddy: 3 seconds
# Bonnie and Chica: 5 seconds
# Foxy: 5 seconds

scoreboard players add .freddy timer 1
scoreboard players add .bonnie timer 1
scoreboard players add .chica timer 1
scoreboard players add .foxy timer 1

execute if score .freddy timer matches 3 run function fnaf:animatronic/freddy/main
execute if score .bonnie timer matches 5 run function fnaf:animatronic/bonnie/main
execute if score .chica timer matches 5 run function fnaf:animatronic/chica/main
execute if score .foxy timer matches 5 run function fnaf:animatronic/foxy/main
