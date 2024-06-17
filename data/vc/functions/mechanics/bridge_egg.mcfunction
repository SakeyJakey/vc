execute as @e[type=egg] if predicate vc:bridge_egg_kill run kill @s
execute at @e[type=egg] run summon area_effect_cloud ~ ~ ~ { Tags: ["kill"], Duration: 1000000, Passengers: [{ id: "shulker", Tags: ["block", "kill"], Silent: 1b, NoAi: 1 }] }
effect give @e[type=shulker,tag=block] invisibility 30 0 true
execute at @e[type=shulker,tag=block] run summon falling_block ~ ~ ~ { NoGravity: 1, BlockState: { Name: "lime_wool" } }
