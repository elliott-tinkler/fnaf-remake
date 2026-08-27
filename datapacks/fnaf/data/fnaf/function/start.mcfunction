# teleport player to office
tp @s @e[tag=office,limit=1]

scoreboard players reset @s sneak
gamemode adventure @s

clear @s

# provide cameras
$item replace entity @s container.$(inventoryCam1A) with paper[custom_data={fnaf:camera, cam_id:"1A", cam_index:$(inventoryCam1A), cam_name:"Show Stage"},item_model="fnaf:1A",item_name={"bold":true,"text":"CAM 1A"}] 1
$item replace entity @s container.$(inventoryCam1B) with paper[custom_data={fnaf:camera, cam_id:"1B", cam_index:$(inventoryCam1B), cam_name:"Dining Area"},item_model="fnaf:1B",item_name={"bold":true,"text":"CAM 1B"}] 1
$item replace entity @s container.$(inventoryCam1C) with paper[custom_data={fnaf:camera, cam_id:"1C", cam_index:$(inventoryCam1C), cam_name:"Pirate Cove"},item_model="fnaf:1C",item_name={"bold":true,"text":"CAM 1C"}] 1
$item replace entity @s container.$(inventoryCam2A) with paper[custom_data={fnaf:camera, cam_id:"2A", cam_index:$(inventoryCam2A), cam_name:"West Hall"},item_model="fnaf:2A",item_name={"bold":true,"text":"CAM 2A"}] 1
$item replace entity @s container.$(inventoryCam2B) with paper[custom_data={fnaf:camera, cam_id:"2B", cam_index:$(inventoryCam2B), cam_name:"West Hall Corner"},item_model="fnaf:2B",item_name={"bold":true,"text":"CAM 2B"}] 1
$item replace entity @s container.$(inventoryCam3) with paper[custom_data={fnaf:camera, cam_id:"3", cam_index:$(inventoryCam3), cam_name:"Supply Closet"},item_model="fnaf:3",item_name={"bold":true,"text":"CAM 3"}] 1
$item replace entity @s container.$(inventoryCam4A) with paper[custom_data={fnaf:camera, cam_id:"4A", cam_index:$(inventoryCam4A), cam_name:"East Hall"},item_model="fnaf:4A",item_name={"bold":true,"text":"CAM 4A"}] 1
$item replace entity @s container.$(inventoryCam4B) with paper[custom_data={fnaf:camera, cam_id:"4B", cam_index:$(inventoryCam4B), cam_name:"East Hall Corner"},item_model="fnaf:4B",item_name={"bold":true,"text":"CAM 4B"}] 1
$item replace entity @s container.$(inventoryCam5) with paper[custom_data={fnaf:camera, cam_id:"5", cam_index:$(inventoryCam5), cam_name:"Backstage"},item_model="fnaf:5",item_name={"bold":true,"text":"CAM 5"}] 1
$item replace entity @s container.$(inventoryCam6) with paper[custom_data={fnaf:camera, cam_id:"6", cam_index:$(inventoryCam6), cam_name:"Kitchen"},item_model="fnaf:6",item_name={"bold":true,"text":"CAM 6"}] 1
$item replace entity @s container.$(inventoryCam7) with paper[custom_data={fnaf:camera, cam_id:"7", cam_index:$(inventoryCam7), cam_name:"Restrooms"},item_model="fnaf:7",item_name={"bold":true,"text":"CAM 7"}] 1

advancement revoke @s only fnaf:inventory_changed

bossbar set fnaf:usage players @s

stopsound @s
