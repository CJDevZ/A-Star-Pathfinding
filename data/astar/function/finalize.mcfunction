execute if entity @s[scores={astar.p=0}] run return run tag @s add astar.finished

tag @s add astar.finished
scoreboard players operation cur astar.p = @s astar.p
execute as @n[type=marker,tag=astar,tag=!astar.finished,predicate=astar:is_parent] run function astar:finalize