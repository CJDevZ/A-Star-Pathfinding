# Tags
tag @s add astar
tag @s add astar.path
execute if entity @n[predicate=astar:is_end,distance=..0.5] run tag @s add astar.finalizer

# Set Own Id + Set Parent
execute store result score @s astar.i run scoreboard players add counter astar.i 1
scoreboard players operation @s astar.p = @n[type=marker,tag=astar.cur] astar.i

# Distance From Previous
scoreboard players operation @s astar.g += @n[type=marker,tag=astar.cur] astar.g
scoreboard players add @s astar.g 10
execute at @n[type=marker,tag=astar.cur] if predicate astar:diagonal run scoreboard players add @s astar.g 4

# Distance End
function astar:calculate/distance_end

# Position Again
tp @s ~ ~ ~

function astar:add_up