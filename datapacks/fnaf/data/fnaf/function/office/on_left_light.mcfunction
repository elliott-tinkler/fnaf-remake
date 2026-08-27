scoreboard players set .leftLight flag 1

# player feedback
fill 4 10 17 3 11 20 barrier replace black_wool

playsound fnaf:office.left_light block @a 4 11 18

execute if score .leftLightBlindspot flag matches 0 if score .bonnie state matches 6 at @e[tag=bonnie, limit=1] run playsound fnaf:animatronic.at_door hostile @a
execute if score .leftLightBlindspot flag matches 0 if score .bonnie state matches 6 run scoreboard players set .leftLightBlindspot flag 1
