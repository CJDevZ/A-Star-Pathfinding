scoreboard players add @s astar.h 10
execute if predicate astar:diagonal run scoreboard players add @s astar.h 4
execute align xyz unless entity @n[predicate=astar:is_end,dx=0,dy=0,dz=0] positioned ~.5 ~.5 ~.5 run return run function astar:calculate/distance_end
return 1