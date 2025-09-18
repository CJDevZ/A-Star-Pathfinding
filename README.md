Please also contribute to this project. I don't have infinite time on my hands 🥺

## ✅ Features
- Function to find the path to a destination

## 📖 Usage
Call the `astar:_` function and use the remaining markers tagged `astar` to guide anything\
The starting position of the path will be located at the current entity, with the end position being the current position in the context\
E.g. `execute as @s at @p[distance=1..] run function astar:_`

I recommend setting the `maxCommandChainLength` gamerule high enough for your terrain, or restrict the path to a maximum of ~10 blocks — otherwise, temporary markers may stay once the limit is reached

### Block Tags
`#astar:climbable` — climbable\
`#astar:obstructs_floor` — traversable, no descent\
`#astar:impassable_floor` — impassible floor\
`#astar:impassable_wall` — impassible wall

### Penalty Block Tags
`#astar:penalty/damage` 16 — nearby\
`#astar:penalty/danger` 8 — nearby\
`#astar:penalty/disliked` 8

You may add a function to the `#astar:eval_node` tag to modify costs — `return <any>` results in only `impassable` being effective\
— impassible via `kill @s` — add/remove cost via `scoreboard players add/remove @s astar.f <amount>`
#### Penalties increase the cost of a path segment, so the algorithm prefers other routes.

### Example storing
```
#code:loop.mcfunction:

data modify storage code:pathfinding points append from entity @s Pos
kill @s
execute as @n[type=marker,tag=astar] run function code:loop


#code:main.mcfunction:

execute as @n[type=marker,tag=astar] run function code:loop
```