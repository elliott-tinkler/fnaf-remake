# load model data

# freddy
data modify storage fnaf:animatronic freddy.equipment set value {head: {components: {"minecraft:equippable": {slot: "head", asset_id: "fnaf:freddy_head"}}, count: 1, id: "minecraft:glass"}, feet: {components: {"minecraft:dyed_color": 6968645}, count: 1, id: "minecraft:leather_boots"}, chest: {components: {"minecraft:dyed_color": 6968645}, count: 1, id: "minecraft:leather_chestplate"}, legs: {components: {"minecraft:dyed_color": 6968645}, count: 1, id: "minecraft:leather_leggings"}}

# bonnie
data modify storage fnaf:animatronic bonnie.equipment set value {head: {components: {"minecraft:equippable": {slot: "head", asset_id: "fnaf:bonnie_head"}}, count: 1, id: "minecraft:glass"}, feet: {components: {"minecraft:dyed_color": 5719915}, count: 1, id: "minecraft:leather_boots"}, chest: {components: {"minecraft:dyed_color": 5719915}, count: 1, id: "minecraft:leather_chestplate"}, legs: {components: {"minecraft:dyed_color": 5719915}, count: 1, id: "minecraft:leather_leggings"}}

# chica
data modify storage fnaf:animatronic chica.equipment set value {head: {components: {"minecraft:equippable": {slot: "head", asset_id: "fnaf:chica_head"}}, count: 1, id: "minecraft:glass"}, feet: {components: {"minecraft:dyed_color": 11049033}, count: 1, id: "minecraft:leather_boots"}, chest: {components: {"minecraft:dyed_color": 11049033}, count: 1, id: "minecraft:leather_chestplate"}, legs: {components: {"minecraft:dyed_color": 11049033}, count: 1, id: "minecraft:leather_leggings"}}

# foxy
data modify storage fnaf:animatronic foxy.equipment set value {head: {components: {"minecraft:equippable": {slot: "head", asset_id: "fnaf:foxy_head"}}, count: 1, id: "minecraft:glass"}, feet: {components: {"minecraft:dyed_color": 4465187}, count: 1, id: "minecraft:leather_boots"}, chest: {components: {"minecraft:dyed_color": 4465187}, count: 1, id: "minecraft:leather_chestplate"}, legs: {components: {"minecraft:dyed_color": 4465187}, count: 1, id: "minecraft:leather_leggings"}}

# freddy's difficulty data
# freddy is the only animatronic to have a static difficulty
data modify storage fnaf:animatronic freddy.difficulty.night.1 set value 0
data modify storage fnaf:animatronic freddy.difficulty.night.2 set value 0
data modify storage fnaf:animatronic freddy.difficulty.night.3 set value 1

execute store result storage fnaf:random 1-2 int 1 run random value 1..2
data modify storage fnaf:animatronic freddy.difficulty.night.4 set from storage fnaf:random 1-2
data modify storage fnaf:animatronic freddy.difficulty.night.5 set value 3
data modify storage fnaf:animatronic freddy.difficulty.night.6 set value 4

# bonnie's difficulty data
# bonnie's difficulty raises by a net total of 3 each night. could write this for their ai but this is an easier way to store
data modify storage fnaf:animatronic bonnie.difficulty.night.1 set value {0:0, 1:0, 2:1, 3:2, 4:3, 5:3}
data modify storage fnaf:animatronic bonnie.difficulty.night.2 set value {0:3, 1:3, 2:4, 3:5, 4:6, 5:6}
data modify storage fnaf:animatronic bonnie.difficulty.night.3 set value {0:0, 1:0, 2:1, 3:2, 4:3, 5:3}
data modify storage fnaf:animatronic bonnie.difficulty.night.4 set value {0:2, 1:2, 2:3, 3:4, 4:5, 5:5}
data modify storage fnaf:animatronic bonnie.difficulty.night.5 set value {0:5, 1:5, 2:6, 3:7, 4:8, 5:8}
data modify storage fnaf:animatronic bonnie.difficulty.night.6 set value {0:10, 1:10, 2:11, 3:12, 4:13, 5:13}

# chica's difficulty data
# same deal as bonnie
data modify storage fnaf:animatronic chica.difficulty.night.1 set value {0:0, 1:0, 2:0, 3:1, 4:2, 5:2}
data modify storage fnaf:animatronic chica.difficulty.night.2 set value {0:1, 1:1, 2:1, 3:2, 4:3, 5:3}
data modify storage fnaf:animatronic chica.difficulty.night.3 set value {0:5, 1:5, 2:5, 3:6, 4:7, 5:7}
data modify storage fnaf:animatronic chica.difficulty.night.4 set value {0:4, 1:4, 2:4, 3:5, 4:6, 5:6}
data modify storage fnaf:animatronic chica.difficulty.night.5 set value {0:7, 1:7, 2:7, 3:8, 4:9, 5:9}
data modify storage fnaf:animatronic chica.difficulty.night.6 set value {0:12, 1:12, 2:12, 3:13, 4:14, 5:14}

# foxy's difficulty data
# same deal as the other two
data modify storage fnaf:animatronic foxy.difficulty.night.1 set value {0:0, 1:0, 2:0, 3:1, 4:2, 5:2}
data modify storage fnaf:animatronic foxy.difficulty.night.2 set value {0:1, 1:1, 2:1, 3:2, 4:3, 5:3}
data modify storage fnaf:animatronic foxy.difficulty.night.3 set value {0:2, 1:2, 2:2, 3:3, 4:4, 5:4}
data modify storage fnaf:animatronic foxy.difficulty.night.4 set value {0:6, 1:6, 2:6, 3:7, 4:8, 5:8}
data modify storage fnaf:animatronic foxy.difficulty.night.5 set value {0:5, 1:5, 2:5, 3:6, 4:7, 5:7}
data modify storage fnaf:animatronic foxy.difficulty.night.6 set value {0:6, 1:6, 2:6, 3:7, 4:8, 5:8}

# freddy state lookup

# bonnie state lookup

# States:
# 1A is 0
# 1B is 1
# 5 is 2
# 2A is 3
# 2B is 4
# 3 is 5
# Blindspot is 6

data modify storage fnaf:animatronic bonnie.state.0 set value "1A"
data modify storage fnaf:animatronic bonnie.state.1 set value "1B"
data modify storage fnaf:animatronic bonnie.state.2 set value "5"
data modify storage fnaf:animatronic bonnie.state.3 set value "2A"
data modify storage fnaf:animatronic bonnie.state.4 set value "2B"
data modify storage fnaf:animatronic bonnie.state.5 set value "3"
data modify storage fnaf:animatronic bonnie.state.6 set value "blindspot"

# chica state lookup

# foxy state lookup
