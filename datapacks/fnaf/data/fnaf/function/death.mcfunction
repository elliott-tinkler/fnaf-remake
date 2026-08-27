stopsound @s * fnaf:animatronic.jumpscare
execute at @s run playsound fnaf:death_static ui @s
clear @s


item replace entity @s armor.head with glass[tooltip_display={hide_tooltip:true},equippable={slot:"head",camera_overlay:"fnaf:misc/game_over"},item_model="air",enchantments={"binding_curse":1}] 1

scoreboard players set .back_to_lobby timer 100
