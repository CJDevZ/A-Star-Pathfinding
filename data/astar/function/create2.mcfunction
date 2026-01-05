# Tags
tag @s add astar.path

# Set Own Id + Set Parent
execute store result score @s astar.i run scoreboard players add counter astar.i 1
scoreboard players operation @s astar.p = cur astar.i

# Check if End — if so, mark as finalizer and skip the calculations
execute align xyz if entity @n[dx=0,dy=0,dz=0,predicate=astar:is_end] run return run tag @s add astar.finalizer

# Distance From Previous
scoreboard players operation @s astar.g += cur astar.g
scoreboard players add @s astar.g 10
execute at d385fd95-56dd-45b0-bbc9-6a258183f0b5 if predicate astar:diagonal run scoreboard players add @s astar.g 4

# Distance End
function astar:calculate/distance_end

# Position Again
tp ~ ~ ~

function astar:add_up