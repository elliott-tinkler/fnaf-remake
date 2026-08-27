# run every in-game hour
scoreboard players set .1800tick timer 0

execute store result storage fnaf:general hour int 1 run scoreboard players add .hour timer 1
function fnaf:update_hour with storage fnaf:general

# update the difficulty of the animatronics
function fnaf:animatronic/update_difficulty with storage fnaf:general
