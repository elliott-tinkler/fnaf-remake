# States:
# 1A is 0
# 1B is 1
# 5 is 2
# 2A is 3
# 2B is 4
# 3 is 5
# Blindspot is 6

# Only seven states, macro lookup isn't worth it

execute if score .bonnie state matches 1 run return run function fnaf:animatronic/bonnie/state/1b
execute if score .bonnie state matches 2 run return run function fnaf:animatronic/bonnie/state/5
execute if score .bonnie state matches 3 run return run function fnaf:animatronic/bonnie/state/2a
execute if score .bonnie state matches 4 run return run function fnaf:animatronic/bonnie/state/2b
execute if score .bonnie state matches 5 run return run function fnaf:animatronic/bonnie/state/3
execute if score .bonnie state matches 6 run return run function fnaf:animatronic/bonnie/state/blindspot

# bonnie is only spotted on 1A at the very start and never again
execute if score .bonnie state matches 0 run function fnaf:animatronic/bonnie/state/1a
