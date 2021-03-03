playsound minecraft:entity.bee.pollinate neutral @a[distance=..16] ~ ~ ~ 1.5 1

particle minecraft:dust 0 1 0 1 ~1 ~ ~ 0 1 0 1 0
particle minecraft:dust 0 1 0 1 ~-1 ~ ~ 0 1 0 1 0
particle minecraft:dust 0 1 0 1 ~ ~ ~1 0 1 0 1 0
particle minecraft:dust 0 1 0 1 ~ ~ ~-1 0 1 0 1 0
particle minecraft:dust 0 1 0 1 ~ ~ ~ 0 1 0 1 0

execute if predicate llamarama:bumbllama_flower_spawn_chance run summon minecraft:item ~ ~ ~ {NoGravity:1b,Tags:["created_flower"],Item:{id:"minecraft:dandelion",Count:1b}}
execute if predicate llamarama:bumbllama_flower_spawn_chance run summon minecraft:item ~ ~ ~ {NoGravity:1b,Tags:["created_flower"],Item:{id:"minecraft:poppy",Count:1b}}
execute if predicate llamarama:bumbllama_flower_spawn_chance run summon minecraft:item ~ ~ ~ {NoGravity:1b,Tags:["created_flower"],Item:{id:"minecraft:blue_orchid",Count:1b}}
execute if predicate llamarama:bumbllama_flower_spawn_chance run summon minecraft:item ~ ~ ~ {NoGravity:1b,Tags:["created_flower"],Item:{id:"minecraft:allium",Count:1b}}
execute if predicate llamarama:bumbllama_flower_spawn_chance run summon minecraft:item ~ ~ ~ {NoGravity:1b,Tags:["created_flower"],Item:{id:"minecraft:azure_bluet",Count:1b}}
execute if predicate llamarama:bumbllama_flower_spawn_chance run summon minecraft:item ~ ~ ~ {NoGravity:1b,Tags:["created_flower"],Item:{id:"minecraft:red_tulip",Count:1b}}
execute if predicate llamarama:bumbllama_flower_spawn_chance run summon minecraft:item ~ ~ ~ {NoGravity:1b,Tags:["created_flower"],Item:{id:"minecraft:pink_tulip",Count:1b}}
execute if predicate llamarama:bumbllama_flower_spawn_chance run summon minecraft:item ~ ~ ~ {NoGravity:1b,Tags:["created_flower"],Item:{id:"minecraft:white_tulip",Count:1b}}
execute if predicate llamarama:bumbllama_flower_spawn_chance run summon minecraft:item ~ ~ ~ {NoGravity:1b,Tags:["created_flower"],Item:{id:"minecraft:orange_tulip",Count:1b}}
execute if predicate llamarama:bumbllama_flower_spawn_chance run summon minecraft:item ~ ~ ~ {NoGravity:1b,Tags:["created_flower"],Item:{id:"minecraft:oxeye_daisy",Count:1b}}
execute if predicate llamarama:bumbllama_flower_spawn_chance run summon minecraft:item ~ ~ ~ {NoGravity:1b,Tags:["created_flower"],Item:{id:"minecraft:cornflower",Count:1b}}
execute if predicate llamarama:bumbllama_flower_spawn_chance run summon minecraft:item ~ ~ ~ {NoGravity:1b,Tags:["created_flower"],Item:{id:"minecraft:lily_of_the_valley",Count:1b}}
execute if predicate llamarama:bumbllama_flower_spawn_chance run summon minecraft:item ~ ~ ~ {NoGravity:1b,Tags:["created_flower"],Item:{id:"minecraft:sunflower",Count:1b}}
execute if predicate llamarama:bumbllama_flower_spawn_chance run summon minecraft:item ~ ~ ~ {NoGravity:1b,Tags:["created_flower"],Item:{id:"minecraft:lilac",Count:1b}}
execute if predicate llamarama:bumbllama_flower_spawn_chance run summon minecraft:item ~ ~ ~ {NoGravity:1b,Tags:["created_flower"],Item:{id:"minecraft:rose_bush",Count:1b}}
execute if predicate llamarama:bumbllama_flower_spawn_chance run summon minecraft:item ~ ~ ~ {NoGravity:1b,Tags:["created_flower"],Item:{id:"minecraft:peony",Count:1b}}

spreadplayers ~ ~ 3 8 false @e[distance=..1,tag=created_flower]
