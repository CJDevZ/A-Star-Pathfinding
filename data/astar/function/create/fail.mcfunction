execute positioned ~ ~-1 ~ if entity @n[type=marker,tag=astar,tag=!astar.end,dx=0,dy=2,dz=0] run return run kill @s
tag @s add astar.fail