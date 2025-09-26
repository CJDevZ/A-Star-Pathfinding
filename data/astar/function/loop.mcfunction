scoreboard players set min astar.f 2147483647
scoreboard players operation min astar.f < @e[type=marker,tag=astar,tag=astar.path,tag=!astar.traveled] astar.f
scoreboard players set min astar.h 2147483647
scoreboard players operation min astar.h < @e[type=marker,tag=astar,tag=astar.path,tag=!astar.traveled,predicate=astar:lowest] astar.h

execute as @e[type=marker,tag=astar,tag=astar.path,tag=!astar.traveled,predicate=astar:next,sort=random,limit=1] at @s run function astar:step
# Loop if not Finished
execute unless entity @n[type=marker,tag=astar,tag=astar.finalizer,tag=!astar.finished] if entity @n[type=marker,tag=astar,tag=astar.path,tag=!astar.traveled] run function astar:loop