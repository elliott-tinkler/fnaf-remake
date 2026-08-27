Could use mannequins instead of armor stands for the animatronics.

MADE FOR VERSION 26.1.2
IF DATAPACK BREAKS, CHECK inventory_changed.mcfunction as Mojang may change the enderchest container from "EnderItems" to something else

Could use /spectate for teleporting to cameras at fixed angles
Each camera item should store their container index in custom data

Need to work on randomizers for chica and bonnie, perhaps use a macro if wanna change difficulty, same applies for foxy
Implement freddy network

Optimizations (optional, game is fast enough):
/item replace from player cursor to armor stand to avoid serializing nbt

540 seconds * 20 ticks =
10800 ticks

Style updates:
Replace cameras with armor stands so no headbump, and use player jump predicate to exit camera as opposed to crouching (looks smoother) (again, optional)
