# run every second
scoreboard players set .20tick timer 0

execute store result storage fnaf:power current int 0.0055555 run scoreboard players get .current power

# IF player runs out of power
execute if score .outOfPower flag matches 0 if score .current power matches ..0 run function fnaf:out_of_power

function fnaf:update_power with storage fnaf:power

# animatronics
function fnaf:animatronic/main
