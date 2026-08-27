# either kill or 1B

execute if score .leftDoor flag matches 0 run return run function fnaf:animatronic/bonnie/jumpscare
scoreboard players set .bonnie state 1
scoreboard players set .leftLightBlindspot flag 0
function fnaf:animatronic/bonnie/update_position
