scoreboard players reset .death timer

scoreboard players set .leftLightBlindspot flag 0
scoreboard players set .rightLightBlindspot flag 0

scoreboard players set .nightActive flag 1
scoreboard players set .outOfPower flag 0
scoreboard players set .viewingCamera flag 0
scoreboard players set .hour timer 0
scoreboard players set .10tick timer 0
scoreboard players set .20tick timer 0
scoreboard players set .1800tick timer 0
scoreboard players operation .current power = .max power

# re-randomize freddy's difficulty
execute store result storage fnaf:random 1-2 int 1 run random value 1..2
data modify storage fnaf:animatronic freddy.difficulty.night.4 set from storage fnaf:random 1-2

scoreboard players set .freddy state 0
scoreboard players set .bonnie state 0
scoreboard players set .chica state 0
scoreboard players set .foxy state 0

scoreboard players set .freddy timer 0
scoreboard players set .bonnie timer 0
scoreboard players set .chica timer 0
scoreboard players set .foxy timer 0

function fnaf:animatronic/freddy/update_position
function fnaf:animatronic/bonnie/update_position
function fnaf:animatronic/chica/update_position
function fnaf:animatronic/foxy/update_position

function fnaf:office/open_right_door
function fnaf:office/open_left_door

data modify storage fnaf:general hour set value 0
function fnaf:animatronic/update_difficulty with storage fnaf:general

execute store result storage fnaf:power current int 0.0055555 run scoreboard players get .current power
function fnaf:update_power with storage fnaf:power

setblock 0 14 18 minecraft:redstone_lamp[lit=true]

data remove storage fnaf:camera view
scoreboard objectives setdisplay sidebar info

team modify am prefix "12 "

execute as @a[tag=!dev] run function fnaf:start with storage fnaf:start
