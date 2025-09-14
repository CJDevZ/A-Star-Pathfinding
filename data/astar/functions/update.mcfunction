# Distance From Previous
scoreboard players operation new astar.g = @n[type=marker,tag=astar.cur] astar.g
scoreboard players add new astar.g 10
execute facing entity b14fb83c-b441-457a-890f-4aabcfb6cb26 eyes rotated ~ 0 positioned ^ ^ ^0.87 align xyz positioned ~.5 ~.5 ~.5 if predicate astar:diagonal run scoreboard players add new astar.g 4

# Check if new distance is more — yes -> return
execute if score new astar.g >= @s astar.g run return 1

# Set Parent
scoreboard players operation @s astar.p = @n[tag=astar.cur] astar.i
# Set Distance
scoreboard players operation @s astar.g = new astar.g
function astar:add_up