scoreboard players set .rightDoor flag 0
setblock -2 11 18 stone_button[facing=east]

# player feedback
kill @e[tag=rightdoor]

playsound fnaf:office.door block @a -3 11 18
