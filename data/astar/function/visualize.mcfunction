# Visualize Markers
execute at @e[type=marker,tag=astar.start] run particle minecraft:dust{scale:0.5,color:[0.0,1.0,0.0]}
execute at @e[type=marker,tag=astar.finished] run particle minecraft:dust{scale:0.5,color:[1.0,0.0,1.0]}
execute at @e[type=marker,tag=astar.path,tag=!astar.start,tag=!astar.finished] run particle minecraft:dust{scale:0.5,color:[0.0,0.0,1.0]}
execute at @e[type=marker,tag=astar.end] run particle minecraft:dust{scale:0.5,color:[1.0,0.0,0.0]}