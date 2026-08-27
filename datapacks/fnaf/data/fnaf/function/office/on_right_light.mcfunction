scoreboard players set .rightLight flag 1

# player feedback
fill -4 10 17 -3 11 20 barrier replace black_wool

playsound fnaf:office.right_light block @a -4 11 18

execute if score .rightLightBlindspot flag matches 0 if score .chica state matches 6 at @e[tag=chica, limit=1] run playsound fnaf:animatronic.at_door hostile @a
execute if score .rightLightBlindspot flag matches 0 if score .chica state matches 6 run scoreboard players set .rightLightBlindspot flag 1
