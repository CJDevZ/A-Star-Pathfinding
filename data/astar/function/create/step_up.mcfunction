scoreboard players add @s astar.g 20
scoreboard players add vertical astar.g 1
execute unless score vertical astar.g matches -2..1 unless block ~ ~ ~ #astar:climbable run return run kill @s
execute positioned ~ ~1 ~ run function astar:create1