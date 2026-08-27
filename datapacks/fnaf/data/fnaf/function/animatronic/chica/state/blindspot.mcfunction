# either kill or 1B

execute if score .rightDoor flag matches 0 run return run function fnaf:animatronic/chica/jumpscare
scoreboard players set .chica state 1
scoreboard players set .rightLightBlindspot flag 0
function fnaf:animatronic/chica/update_position
