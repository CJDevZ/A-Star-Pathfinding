# Visualize Markers
execute at @e[type=marker,tag=astar,predicate=astar:is_start] run particle minecraft:dust{scale:2,color:[0.0,1.0,0.0]}
execute at @e[type=marker,tag=astar,tag=astar.finished] run particle minecraft:dust{scale:2,color:[1.0,0.0,1.0]}
execute at @e[type=marker,tag=astar,tag=astar.path,tag=!astar.finished] run particle minecraft:dust{scale:2,color:[0.0,0.0,1.0]}
execute at @e[type=marker,tag=astar,predicate=astar:is_end] run particle minecraft:dust{scale:2,color:[1.0,0.0,0.0]}