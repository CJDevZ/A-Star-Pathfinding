# Add up numbers
# h counts 1.5x to make it find a path faster — not the fastest one though
scoreboard players operation @s astar.f = @s astar.g
scoreboard players operation @s astar.f += @s astar.g
scoreboard players operation @s astar.f += @s astar.h
scoreboard players operation @s astar.f += @s astar.h
scoreboard players operation @s astar.f += @s astar.h
scoreboard players operation @s astar.f /= 2 __int__

execute unless function #astar:eval_node run return 1
execute if predicate astar:penalty/near_damage run return run scoreboard players add @s astar.f 16
execute if predicate astar:penalty/near_danger run return run scoreboard players add @s astar.f 8
execute if predicate astar:penalty/disliked run return run scoreboard players add @s astar.f 8