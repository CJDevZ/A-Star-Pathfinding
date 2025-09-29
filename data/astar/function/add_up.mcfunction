# Add up numbers
scoreboard players operation @s astar.f = @s astar.g
scoreboard players operation @s astar.f += @s astar.h

execute if function #astar:eval_node run return 1
execute if predicate astar:penalty/near_damage run return run scoreboard players add @s astar.f 160
execute if predicate astar:penalty/near_danger run return run scoreboard players add @s astar.f 80
execute if predicate astar:penalty/disliked run return run scoreboard players add @s astar.f 80