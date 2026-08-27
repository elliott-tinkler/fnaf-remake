# States:
# 1A is 0
# 1B is 1
# 6 is 2
# 7 is 3
# 4A is 4
# 4B is 5
# Blindspot is 6

# Only seven states, macro lookup isn't worth it

execute if score .chica state matches 1 run return run function fnaf:animatronic/chica/state/1b
execute if score .chica state matches 2 run return run function fnaf:animatronic/chica/state/6
execute if score .chica state matches 3 run return run function fnaf:animatronic/chica/state/7
execute if score .chica state matches 4 run return run function fnaf:animatronic/chica/state/4a
execute if score .chica state matches 5 run return run function fnaf:animatronic/chica/state/4b
execute if score .chica state matches 6 run return run function fnaf:animatronic/chica/state/blindspot

# chica is only spotted on 1A at the very start and never again
execute if score .chica state matches 0 run function fnaf:animatronic/chica/state/1a
