scoreboard players add @s astar.g 20
scoreboard players add vertical astar.g 1
execute if score vertical astar.g > maxStepHeight astar.config unless block ~ ~ ~ #astar:climbable run return run kill @s
execute positioned ~ ~1 ~ run function astar:create1