tag @s add viewingCamera
scoreboard players reset @s sneak

$item replace entity @s container.$(cam_index) with paper[custom_data={fnaf:camera, cam_id:"$(cam_id)", cam_index:$(cam_index), cam_name:"$(cam_name)"},item_model="$(item_model)",item_name=$(item_name)] 1

# teleport to camera
$tp @s @e[tag=camera, tag=$(cam_id), limit=1]
$execute if score .viewingCamera flag matches 0 at @e[tag=camera, tag=$(cam_id), limit=1] run playsound fnaf:camera.open block @a ~ ~100000 ~ 100000
$execute if score .viewingCamera flag matches 1 at @e[tag=camera, tag=$(cam_id), limit=1] run playsound fnaf:camera.blip block @a

scoreboard players set .viewingCamera flag 1

# reset advancement
advancement revoke @s only fnaf:inventory_changed

bossbar set fnaf:crouch_tip players @s

# player feedback
$title @s actionbar "$(cam_name)"

effect give @s invisibility infinite 0 true
