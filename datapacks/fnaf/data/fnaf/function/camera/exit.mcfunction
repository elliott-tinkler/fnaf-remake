scoreboard players reset @s sneak
tag @s remove viewingCamera
scoreboard players set .viewingCamera flag 0

# exit camera
effect clear @s invisibility
tp @s @e[tag=office, limit=1]

stopsound @s block fnaf:camera.open
execute at @e[tag=office] run playsound fnaf:camera.close block
bossbar set fnaf:crouch_tip players
