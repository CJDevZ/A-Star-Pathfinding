# Distance From Previous
scoreboard players operation new astar.g = @n[type=marker,tag=astar,tag=astar.cur] astar.g
scoreboard players add new astar.g 10
execute at @n[type=marker,tag=astar,tag=astar.cur] if predicate astar:diagonal run scoreboard players add new astar.g 4

# Check if new distance is more — yes -> return
execute if score new astar.g >= @s astar.g run return 1

# Set Parent
scoreboard players operation @s astar.p = @n[tag=astar,tag=astar.cur] astar.i
# Set Distance
scoreboard players operation @s astar.g = new astar.g
function astar:add_up