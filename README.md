Please also contribute to this project. I don't have infinite time on my hands 🥺

## ✅ Features
- Function to find the path to a destination

## 📖 Usage
Call the `astar:_` function and use the remaining markers tagged `astar` to guide anything\
The starting position of the path will be located at the current entity, with the end position being the current position in the context\
E.g. `execute as @s at @p[distance=1..] run function astar:_`\
Note that floating destinations & unreached targets will result in failure

I recommend setting the `maxCommandChainLength` gamerule high enough for your terrain, or restrict the path to a maximum of ~10 blocks — otherwise, temporary markers may stay once the limit is reached

### Config
The configuration is stored in the `astar.config` scoreboard objective.\
`scoreboard players set maxDistance astar.config <maxDistance>` — **default: 100 (10 blocks)** — max distance the pathfinder may travel till finalizing the path.\
`scoreboard players set maxStepHeight astar.config <maxStepHeight>` — **default: 1** — how many blocks it may walk up at once.\
`scoreboard players set maxFallDistance astar.config -<maxFallDistance>` — **default: -3** — **negative value**, how many blocks it may fall each step.\
To avoid conflicts with others' usage, do `scoreboard players reset * astar.config` before doing your logic
### Block Tags
`#astar:climbable` — climbable\
`#astar:obstructs_floor` — traversable, no descent\
`#astar:impassable_floor` — impassible floor\
`#astar:impassable_wall` — impassible wall

### Penalty Block Tags
`#astar:penalty/damage` 160 — nearby\
`#astar:penalty/danger` 80 — nearby\
`#astar:penalty/disliked` 80

You may add a function to the `#astar:eval_node` tag to modify costs — `return <any>` results in only `impassable` being effective\
— impassible via `kill @s` — add/remove cost via `scoreboard players add/remove @s astar.f <amount>`
#### Penalties increase the cost of a path segment, so the algorithm prefers other routes.

### Example code
```
#code:loop.mcfunction:

data modify storage code:pathfinding points append from entity @s Pos
kill @s
execute as @n[type=marker,tag=astar] at @s run function code:loop


#code:main.mcfunction:

execute store success score found my_score at @n[tag=target] if function astar:_ as @n[type=marker,tag=astar,sort=furthest] at @s run function code:loop
execute unless score found my_score matches 1 run function code:set_direct_target # Walk directly towards target if no path is found
```