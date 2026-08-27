scoreboard players set .outOfPower flag 1

clear @a[tag=!dev]
execute as @a[tag=!dev, tag=viewingCamera] run function fnaf:camera/exit

# player feedback
execute at @e[tag=office, limit=1] run playsound fnaf:office.power_outage record @a

execute if score .rightDoor flag matches 1 run function fnaf:office/open_right_door
execute if score .leftDoor flag matches 1 run function fnaf:office/open_left_door

setblock -2 10 18 stone_button[facing=east]
setblock 2 10 18 stone_button[facing=west]

setblock 0 14 18 minecraft:redstone_lamp[lit=false]
