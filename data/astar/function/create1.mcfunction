execute if block ~ ~ ~ #astar:impassable_wall run return run kill @s

execute unless block ~ ~ ~ #astar:ignore run return run function astar:create/step_up
execute unless score vertical astar.g matches -2147483648..0 if predicate astar:is_climbable run return run function astar:create/step_up
execute if block ~ ~-1 ~ #astar:ignore unless block ~ ~ ~ #astar:obstructs_floor unless score vertical astar.g matches 1..2147483647 run return run function astar:create/step_down

execute if predicate astar:invalid_pos run return run kill @s
execute positioned ~ ~-1 ~ align xyz if entity @n[type=marker,tag=astar,tag=!astar.create,tag=!astar.finished,predicate=!astar:is_end,dx=0,dy=2,dz=0] run return run kill @s

tag @s remove astar.create
tp ~ ~ ~
execute at @s run function astar:create2