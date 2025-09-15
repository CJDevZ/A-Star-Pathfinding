tag @s add astar
tag @s add astar.create
#execute unless block ~ ~ ~ #astar:ignore unless block ~ ~1 ~ #astar:ignore run return run tag @s add astar
#execute unless block ~ ~ ~ #astar:ignore positioned ~ ~1 ~ run return run function astar:create
# TODO: Fix this breaking stuff — it should just remove unwalkable spaces
#execute unless block ~ ~1 ~ #astar:ignore run return run tag @s add astar

execute unless block ~ ~ ~ #astar:ignore positioned ~ ~1 ~ run return run function astar:create/step_up
execute if block ~ ~-1 ~ #astar:ignore positioned ~ ~-1 ~ run return run function astar:create/step_down
#execute unless score vertical astar.g matches -2..1 run tellraw @a {score:{name:"vertical",objective:"astar.g"}}
execute unless score vertical astar.g matches -2..1 run return run kill @s
execute positioned ~ ~-1 ~ align xyz if entity @n[type=marker,tag=astar,tag=!astar.create,predicate=!astar:is_end,dx=0,dy=2,dz=0] run return run kill @s
execute unless block ~ ~1 ~ #astar:ignore run return run kill @s
execute if block ~ ~ ~ #astar:impassable run return run kill @s
execute if block ~ ~1 ~ #astar:impassable run return run kill @s

tag @s remove astar.create
tp ~ ~ ~
execute at @s run function astar:create2