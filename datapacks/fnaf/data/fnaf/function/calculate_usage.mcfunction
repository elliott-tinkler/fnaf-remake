scoreboard players set .current usage 0
execute unless score .outOfPower flag matches 1 run scoreboard players add .current usage 1
execute if score .viewingCamera flag matches 1 run scoreboard players add .current usage 1

execute if score .rightDoor flag matches 1 run scoreboard players add .current usage 1
execute if score .rightLight flag matches 1 run scoreboard players add .current usage 1
execute if score .leftDoor flag matches 1 run scoreboard players add .current usage 1
execute if score .leftLight flag matches 1 run scoreboard players add .current usage 1

execute store result storage fnaf:power usage int 1 run scoreboard players get .current usage
