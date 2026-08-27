execute unless score .nightActive flag matches 1 run return fail

# get cam id
item replace entity @s enderchest.0 from entity @s player.cursor

# convert to storage
data remove storage fnaf:camera current_cam
data modify storage fnaf:camera current_cam set from entity @s EnderItems[0].components
item replace entity @s enderchest.0 with air
item replace entity @s player.cursor with air


# if inventory changed and no item was found in player cursor, player dropped an item.
execute unless data storage fnaf:camera current_cam at @s run return run function fnaf:dropped_item

data modify storage fnaf:camera view.item_name set from storage fnaf:camera current_cam.minecraft:item_name
data modify storage fnaf:camera view.item_model set from storage fnaf:camera current_cam.minecraft:item_model
data modify storage fnaf:camera view.cam_id set from storage fnaf:camera current_cam.minecraft:custom_data.cam_id
data modify storage fnaf:camera view.cam_index set from storage fnaf:camera current_cam.minecraft:custom_data.cam_index
data modify storage fnaf:camera view.cam_name set from storage fnaf:camera current_cam.minecraft:custom_data.cam_name

execute unless score .outOfPower flag matches 1 run function fnaf:camera/view with storage fnaf:camera view
