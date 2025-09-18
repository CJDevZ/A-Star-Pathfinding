execute if block ~ ~ ~ #astar:impassable_wall run return run kill @s

execute if predicate astar:step_up run return run function astar:create/step_up
execute if block ~ ~-1 ~ #astar:ignore unless block ~ ~ ~ #astar:obstructs_floor if score vertical astar.g matches ..0 run return run function astar:create/step_down

execute if predicate astar:invalid_pos run return run kill @s
execute positioned ~ ~-1 ~ align xyz if entity @n[type=marker,tag=astar,tag=!astar.create,predicate=!astar:is_end,dx=0,dy=2,dz=0] run return run kill @s

tag @s remove astar.create
tp ~ ~ ~
execute at @s run function astar:create2