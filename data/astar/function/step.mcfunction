tag @s add astar.cur
scoreboard players reset vertical astar.g

# Straight - Replace/New
execute positioned ~ ~ ~1 unless function astar:create/replace run function astar:create/summon
execute positioned ~1 ~ ~ unless function astar:create/replace run function astar:create/summon
execute positioned ~ ~ ~-1 unless function astar:create/replace run function astar:create/summon
execute positioned ~-1 ~ ~1 unless function astar:create/replace run function astar:create/summon
# Diagonal - Replace
execute positioned ~-1 ~ ~-1 unless function astar:create/replace run function astar:create/summon
execute positioned ~1 ~ ~-1 unless function astar:create/replace run function astar:create/summon
execute positioned ~1 ~ ~1 unless function astar:create/replace run function astar:create/summon
execute positioned ~-1 ~ ~1 unless function astar:create/replace run function astar:create/summon

tag @s remove astar.cur