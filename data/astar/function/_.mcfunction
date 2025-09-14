scoreboard players reset counter astar.i
execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:["astar","astar.end"]}
execute at @s align xyz run summon marker ~.5 ~.5 ~.5 {Tags:["astar","astar.start"]}

execute store result score counter astar.p run scoreboard players set @n[type=marker,tag=astar.start] astar.i 0
execute as @n[type=marker,tag=astar.start] at @s run function astar:step
function astar:loop
execute as @n[type=marker,tag=astar.finalizer] run function astar:finalize
kill @e[type=marker,tag=astar,tag=!astar.finished]