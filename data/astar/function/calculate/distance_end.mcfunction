# TODO: Calculate Distance without Air Travel — Actual Distance — Makes Pathfinding Faster
execute unless block ~ ~ ~ #astar:ignore run scoreboard players add @s astar.h 10
execute unless block ~ ~ ~ #astar:ignore positioned ~ ~1 ~ run return run function astar:calculate/distance_end
execute if block ~ ~-1 ~ #astar:ignore run scoreboard players add @s astar.h 10
execute if block ~ ~-1 ~ #astar:ignore positioned ~ ~-1 ~ run return run function astar:calculate/distance_end
tp @s ~ ~ ~
execute facing entity b14fb83c-b441-457a-890f-4aabcfb6cb26 eyes rotated ~ 0 positioned ^ ^ ^0.87 align xyz positioned ~.5 ~.5 ~.5 run function astar:calculate/check_end