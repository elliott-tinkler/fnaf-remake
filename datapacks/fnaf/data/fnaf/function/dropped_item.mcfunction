# convert to storage
data modify storage fnaf:camera current_cam set from entity @n[type=item] Item.components

data modify storage fnaf:camera view.item_name set from storage fnaf:camera current_cam.minecraft:item_name
data modify storage fnaf:camera view.item_model set from storage fnaf:camera current_cam.minecraft:item_model
data modify storage fnaf:camera view.cam_id set from storage fnaf:camera current_cam.minecraft:custom_data.cam_id
data modify storage fnaf:camera view.cam_index set from storage fnaf:camera current_cam.minecraft:custom_data.cam_index
data modify storage fnaf:camera view.cam_name set from storage fnaf:camera current_cam.minecraft:custom_data.cam_name
kill @n[type=item]

function fnaf:camera/view with storage fnaf:camera view
