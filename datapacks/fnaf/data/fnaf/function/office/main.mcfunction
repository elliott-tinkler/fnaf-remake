execute if score .rightDoor flag matches 1 if block -2 11 18 stone_button[powered=true] run function fnaf:office/open_right_door
execute if score .rightLight flag matches 1 unless block -2 10 18 stone_button[powered=true] run function fnaf:office/off_right_light
execute if score .leftDoor flag matches 1 if block 2 11 18 stone_button[powered=true] run function fnaf:office/open_left_door
execute if score .leftLight flag matches 1 unless block 2 10 18 stone_button[powered=true] run function fnaf:office/off_left_light

execute if score .rightDoor flag matches 0 if block -2 11 18 stone_button[powered=true] run function fnaf:office/close_right_door
execute if score .rightLight flag matches 0 if block -2 10 18 stone_button[powered=true] run function fnaf:office/on_right_light
execute if score .leftDoor flag matches 0 if block 2 11 18 stone_button[powered=true] run function fnaf:office/close_left_door
execute if score .leftLight flag matches 0 if block 2 10 18 stone_button[powered=true] run function fnaf:office/on_left_light
