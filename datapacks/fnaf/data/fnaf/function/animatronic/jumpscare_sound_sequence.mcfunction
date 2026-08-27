execute as @a[tag=!dev, tag=viewingCamera] run function fnaf:camera/exit

execute at @e[tag=office] run playsound fnaf:animatronic.jumpscare hostile @a

# starts timer for
scoreboard players set .death timer 15

function fnaf:reset
