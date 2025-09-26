scoreboard players add @s astar.g 20
scoreboard players remove vertical astar.g 1
execute if score vertical astar.g < maxFallDistance astar.config unless block ~ ~ ~ #astar:climbable run return run kill @s
execute if block ~ ~1 ~ #astar:climbable run scoreboard players set vertical astar.g 0
execute positioned ~ ~-1 ~ run function astar:create1