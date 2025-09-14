# End Marker: [I;-1320175556,-1270790790,-1995486549,-810104026]
# Start Marker: [I;468780849,-1207613367,-1699389816,-335253658]
# Reset Id Counter
scoreboard players reset counter astar.i
# Summon Markers for Endpoints
execute align xyz run summon marker ~.5 ~.5 ~.5 {UUID:[I;-1320175556,-1270790790,-1995486549,-810104026],Tags:["astar"]}
execute at @s align xyz run summon marker ~.5 ~.5 ~.5 {UUID:[I;468780849,-1207613367,-1699389816,-335253658],Tags:["astar"]}

execute store result score counter astar.p run scoreboard players set 1bf10731-b805-4849-9ab5-5e88ec046f66 astar.i 0
# First Step as Start
execute as 1bf10731-b805-4849-9ab5-5e88ec046f66 at @s run function astar:step
# Loop till maxCommandChainLength or path is found
function astar:loop
# Mark the shortest path
execute as @n[type=marker,tag=astar.finalizer] run function astar:finalize
# Only leave the correct path
kill @e[type=marker,tag=astar,tag=!astar.finished]