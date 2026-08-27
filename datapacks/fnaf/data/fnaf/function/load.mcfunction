# load feedback
tellraw @a "Loaded: FNaF Remake datapack"

function fnaf:animatronic/load

# add scoreboard for flags (boolean values)
scoreboard objectives add flag dummy

# add gameplay scoreboards
scoreboard objectives add timer dummy
scoreboard objectives add info dummy ""
scoreboard objectives add power dummy
scoreboard objectives add night dummy
scoreboard objectives add constant dummy
scoreboard objectives add random dummy
scoreboard objectives add difficulty dummy

# animatronic state (room / status)
scoreboard objectives add state dummy

# set inventory indices for cameras
data modify storage fnaf:start inventoryCam1A set value 13
data modify storage fnaf:start inventoryCam1B set value 12
data modify storage fnaf:start inventoryCam1C set value 21
data modify storage fnaf:start inventoryCam2A set value 30
data modify storage fnaf:start inventoryCam2B set value 3
data modify storage fnaf:start inventoryCam3 set value 29
data modify storage fnaf:start inventoryCam4A set value 32
data modify storage fnaf:start inventoryCam4B set value 5
data modify storage fnaf:start inventoryCam5 set value 20
data modify storage fnaf:start inventoryCam6 set value 33
data modify storage fnaf:start inventoryCam7 set value 24

# set positions for macro teleporting

# reset text in office
kill @e[type=text_display]
summon text_display 2.99 11 18 {text:"DOOR",Tags:["officebutton", "leftdoorbutton"]}
summon text_display 2.99 10 18 {text:"LIGHT",Tags:["officebutton", "leftlightbutton"]}
summon text_display -1.99 11 18 {text:"DOOR",Tags:["officebutton", "rightdoorbutton"]}
summon text_display -1.99 10 18 {text:"LIGHT",Tags:["officebutton", "rightlightbutton"]}

execute as @e[tag=leftdoorbutton] rotated as @s run rotate @s 90 0
execute as @e[tag=leftlightbutton] rotated as @s run rotate @s 90 0
execute as @e[tag=rightdoorbutton] rotated as @s run rotate @s 270 0
execute as @e[tag=rightlightbutton] rotated as @s run rotate @s 270 0

# reset text in lobby
summon text_display 8.99 4 0 {text:["Night ",{"score":{"name":".current","objective":"night"}}],Tags:["nightdisplay"]}
execute as @e[tag=nightdisplay] rotated as @s run rotate @s 90 0

# bonnie

# chica
# data modify storage fnaf:chica pos.0

bossbar add fnaf:usage "Usage"
bossbar set fnaf:usage color green
bossbar set fnaf:usage max 4

team add night
team join night Night

team add am
team join am AM

team add power
team join power Power

scoreboard players set Night info 2
scoreboard players set AM info 1
scoreboard players set Power info 0

scoreboard players set .rightDoor flag 0
scoreboard players set .rightLight flag 0
scoreboard players set .leftDoor flag 0
scoreboard players set .leftLight flag 0

scoreboard players set .leftLightBlindspot flag 0
scoreboard players set .rightLightBlindspot flag 0

scoreboard players set .max power 18000
