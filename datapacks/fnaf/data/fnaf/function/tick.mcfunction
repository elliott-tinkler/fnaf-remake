execute if block 8 3 0 pale_oak_button[powered=true] run function fnaf:night/cycle

# jumpscare sequence timer
execute if score .death timer matches 1.. run scoreboard players remove .death timer 1
execute if score .death timer matches ..0 as @a run function fnaf:death
execute if score .death timer matches ..0 run scoreboard players reset .death timer

# back to lobby timer
execute if score .back_to_lobby timer matches 1.. run scoreboard players remove .back_to_lobby timer 1
execute if score .back_to_lobby timer matches ..0 as @a run function fnaf:back_to_lobby
execute if score .back_to_lobby timer matches ..0 run scoreboard players reset .back_to_lobby timer

# anything after here only happens in game
execute unless score .nightActive flag matches 1 run return fail

execute as @a[tag=viewingCamera] if score @s sneak matches 1.. run function fnaf:camera/exit

# put this or something similar in a 10tick function:
# $team modify Power suffix " left: $(power)%"

# calculate power
function fnaf:calculate_usage
function fnaf:update_usage with storage fnaf:power
function fnaf:drain_power with storage fnaf:power

# power usage stuff
execute unless score .outOfPower flag matches 1 run function fnaf:office/main

# vanity: animatronic teleport buffer

# freddy

# bonnie
execute if score .bonnie_teleport_buffer timer matches 1.. run scoreboard players remove .bonnie_teleport_buffer timer 1
execute if score .bonnie_teleport_buffer timer matches ..0 run function fnaf:animatronic/bonnie/reveal

# chica
execute if score .chica_teleport_buffer timer matches 1.. run scoreboard players remove .chica_teleport_buffer timer 1
execute if score .chica_teleport_buffer timer matches ..0 run function fnaf:animatronic/chica/reveal

# foxy

# other timer functions
scoreboard players add .10tick timer 1
scoreboard players add .20tick timer 1
scoreboard players add .1800tick timer 1

execute if score .10tick timer matches 10.. run function fnaf:time/10tick
execute if score .20tick timer matches 20.. run function fnaf:time/20tick
execute if score .1800tick timer matches 1800.. run function fnaf:time/1800tick

execute if score .viewingCamera flag matches 1 as @a at @s run tp @s @n[tag=camera]
