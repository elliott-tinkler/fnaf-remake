scoreboard players set .leftDoor flag 1
setblock 2 11 18 stone_button[facing=west]

# player feedback
summon block_display 3.5 10 17. {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.5f,2f,1f]},block_state:{Name:"minecraft:netherite_block"},Tags:["leftdoor"]}

playsound fnaf:office.door block @a 3 11 18
