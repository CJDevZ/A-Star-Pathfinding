# Prepare for next pathfinding
kill @e[type=marker,tag=astar]
# End Marker: [I;-1320175556,-1270790790,-1995486549,-810104026]
# Start Marker: [I;468780849,-1207613367,-1699389816,-335253658]
# Reset Id Counter
scoreboard players reset counter astar.i
# Summon Markers for Endpoints
execute align xyz run summon marker ~.5 ~.5 ~.5 {UUID:[I;-1320175556,-1270790790,-1995486549,-810104026],Tags:["astar"]}
execute at @s align xyz run summon marker ~.5 ~.5 ~.5 {UUID:[I;468780849,-1207613367,-1699389816,-335253658],Tags:["astar"]}
# Summon Display Entity for Distance maths
execute as d385fd95-56dd-45b0-bbc9-6a258183f0b5 at @s unless loaded ~ ~ ~ run kill @s
execute unless entity d385fd95-56dd-45b0-bbc9-6a258183f0b5 at @s run summon block_display ~ ~ ~ {UUID:[I;-746193515,1457341872,-1144427995,-2122059595],Tags:["astar.math"],view_range:0,width:0,height:0}
# Store Pos for maths later
execute store result score endx astar.h run data get entity b14fb83c-b441-457a-890f-4aabcfb6cb26 Pos[0]
execute store result score endy astar.h run data get entity b14fb83c-b441-457a-890f-4aabcfb6cb26 Pos[1]
execute store result score endz astar.h run data get entity b14fb83c-b441-457a-890f-4aabcfb6cb26 Pos[2]

execute store result score counter astar.p run scoreboard players set 1bf10731-b805-4849-9ab5-5e88ec046f66 astar.i 0
# First Step as Start
execute as 1bf10731-b805-4849-9ab5-5e88ec046f66 at @s run function astar:step
# Loop till maxCommandChainLength or path is found
function astar:loop
# Mark the shortest path
execute as @n[type=marker,tag=astar.finalizer] run function astar:finalize
execute unless entity @n[type=marker,tag=astar.finalizer] at b14fb83c-b441-457a-890f-4aabcfb6cb26 as @n[tag=astar.path] run function astar:finalize
# Only leave the correct path
kill @e[type=marker,tag=astar,tag=!astar.finished]