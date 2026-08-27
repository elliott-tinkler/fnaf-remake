# every hour from 1800tick, update the difficulty score of the animatronics via macro

$execute store result score .freddy difficulty run data get storage fnaf:animatronic freddy.difficulty.night.$(night)

$execute store result score .bonnie difficulty run data get storage fnaf:animatronic bonnie.difficulty.night.$(night).$(hour)

$execute store result score .chica difficulty run data get storage fnaf:animatronic chica.difficulty.night.$(night).$(hour)

$execute store result score .foxy difficulty run data get storage fnaf:animatronic foxy.difficulty.night.$(night).$(hour)
