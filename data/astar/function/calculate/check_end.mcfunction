scoreboard players add @s astar.h 10
execute if predicate astar:diagonal run scoreboard players add @s astar.h 4
execute align xyz unless entity @n[type=marker,tag=astar.end,dx=0,y=-3000,dy=5999,dz=0] positioned ~.5 ~.5 ~.5 run return run function astar:calculate/distance_end
return 1