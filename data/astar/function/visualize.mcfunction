# Visualize Markers
execute at 1bf10731-b805-4849-9ab5-5e88ec046f66 run particle minecraft:dust{scale:2,color:[0.0,1.0,0.0]}
execute at @e[type=marker,tag=astar,tag=astar.path,tag=astar.finished] run particle minecraft:dust{scale:2,color:[1.0,0.0,1.0]}
execute at @e[type=marker,tag=astar,tag=astar.path,tag=!astar.finished] run particle minecraft:dust{scale:2,color:[0.0,0.0,1.0]}
execute at b14fb83c-b441-457a-890f-4aabcfb6cb26 run particle minecraft:dust{scale:2,color:[1.0,0.0,0.0]}