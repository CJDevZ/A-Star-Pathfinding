execute store result score x astar.h run data get entity @s Pos[0]
execute store result score y astar.h run data get entity @s Pos[1]
execute store result score z astar.h run data get entity @s Pos[2]
data modify storage astar:math transformation set value [0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f]
execute store result storage astar:math transformation[0] float 1 run scoreboard players operation x astar.h -= endx astar.h
execute store result storage astar:math transformation[4] float 1.4 run scoreboard players operation y astar.h -= endy astar.h
execute store result storage astar:math transformation[8] float 1 run scoreboard players operation z astar.h -= endz astar.h
data modify entity d385fd95-56dd-45b0-bbc9-6a258183f0b5 transformation set from storage astar:math transformation
# h counts 1.5x to make it find a path faster — not the fastest route though
execute store result score @s astar.h run data get entity d385fd95-56dd-45b0-bbc9-6a258183f0b5 transformation.scale[0] 15