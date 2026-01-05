tag @s add astar.traveled
execute if score @s astar.g >= maxDistance astar.config at b14fb83c-b441-457a-890f-4aabcfb6cb26 run return run tag @n[type=marker,tag=astar,tag=astar.path] add astar.finalizer
scoreboard players reset vertical astar.g

# Store point's values into globals
scoreboard players operation cur astar.i = @s astar.i
scoreboard players operation cur astar.g = @s astar.g
tp d385fd95-56dd-45b0-bbc9-6a258183f0b5 @s

# Straight - Replace/New
execute positioned ~ ~ ~1 if loaded ~ ~ ~ align xyz positioned ~ ~-1 ~ unless function astar:create/replace run function astar:create/summon
execute positioned ~1 ~ ~ if loaded ~ ~ ~ align xyz positioned ~ ~-1 ~ unless function astar:create/replace run function astar:create/summon
execute positioned ~ ~ ~-1 if loaded ~ ~ ~ align xyz positioned ~ ~-1 ~ unless function astar:create/replace run function astar:create/summon
execute positioned ~-1 ~ ~ if loaded ~ ~ ~ align xyz positioned ~ ~-1 ~ unless function astar:create/replace run function astar:create/summon
# Diagonal - Replace
execute positioned ~-1 ~ ~-1 if loaded ~ ~ ~ align xyz positioned ~ ~-1 ~ unless function astar:create/replace run function astar:create/summon
execute positioned ~1 ~ ~-1 if loaded ~ ~ ~ align xyz positioned ~ ~-1 ~ unless function astar:create/replace run function astar:create/summon
execute positioned ~1 ~ ~1 if loaded ~ ~ ~ align xyz positioned ~ ~-1 ~ unless function astar:create/replace run function astar:create/summon
execute positioned ~-1 ~ ~1 if loaded ~ ~ ~ align xyz positioned ~ ~-1 ~ unless function astar:create/replace run function astar:create/summon