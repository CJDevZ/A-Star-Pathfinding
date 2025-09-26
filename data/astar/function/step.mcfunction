tag @s add astar.traveled
execute if score @s astar.g >= maxDistance astar.config at b14fb83c-b441-457a-890f-4aabcfb6cb26 run return run tag @n[type=marker,tag=astar,tag=astar.path] add astar.finalizer
tag @s add astar.cur
scoreboard players reset vertical astar.g

# Straight - Replace/New
execute positioned ~ ~ ~1 unless function astar:create/replace run function astar:create/summon
execute positioned ~1 ~ ~ unless function astar:create/replace run function astar:create/summon
execute positioned ~ ~ ~-1 unless function astar:create/replace run function astar:create/summon
execute positioned ~-1 ~ ~ unless function astar:create/replace run function astar:create/summon
# Diagonal - Replace
execute positioned ~-1 ~ ~-1 unless function astar:create/replace run function astar:create/summon
execute positioned ~1 ~ ~-1 unless function astar:create/replace run function astar:create/summon
execute positioned ~1 ~ ~1 unless function astar:create/replace run function astar:create/summon
execute positioned ~-1 ~ ~1 unless function astar:create/replace run function astar:create/summon

tag @s remove astar.cur