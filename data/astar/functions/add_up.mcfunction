# Add up numbers
# h counts 1.5x to make it find a path faster — not the fastest one though
scoreboard players operation @s astar.f = @s astar.g
scoreboard players operation @s astar.f += @s astar.g
scoreboard players operation @s astar.f += @s astar.h
scoreboard players operation @s astar.f += @s astar.h
scoreboard players operation @s astar.f += @s astar.h
scoreboard players operation @s astar.f /= 2 __int__