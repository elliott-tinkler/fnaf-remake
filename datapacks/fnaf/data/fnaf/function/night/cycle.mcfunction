# reset button
setblock 8 3 0 pale_oak_button[facing=west]
scoreboard players add .current night 1
execute if score .current night matches 8.. run scoreboard players set .current night 1

execute as @e[tag=nightdisplay] run data modify entity @s text set value ["Night ",{"score":{"name":".current","objective":"night"}}]

execute store result storage fnaf:general night int 1 run scoreboard players get .current night
function fnaf:night/update_scoreboard with storage fnaf:general
