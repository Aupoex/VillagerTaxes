
scoreboard players set #villager_count vt_timer 0
execute as @e[type=minecraft:villager,nbt=!{VillagerData:{profession:"minecraft:none"}}] run scoreboard players add #villager_count vt_timer 1



execute if score #villager_count vt_timer matches 1.. if entity @e[type=minecraft:marker,tag=vt_tribute_barrel] run tellraw @p [{"text":"[村民税箱] ", "color":"gold"}, {"score":{"name":"#villager_count","objective":"vt_timer"}, "color":"green"}, {"text":" 位村民的税已送达！", "color":"gold"}]

execute as @e[type=minecraft:marker,tag=vt_tribute_barrel,limit=1] at @s if block ~ ~ ~ minecraft:barrel if score #villager_count vt_timer matches 1.. run loot insert ~ ~ ~ loot vt:dynamic_emeralds


execute as @e[type=minecraft:marker,tag=vt_tribute_barrel,limit=1] at @s unless block ~ ~ ~ minecraft:barrel run function vt:barrel_missing_routine
execute if score #villager_count vt_timer matches 0 if entity @e[type=minecraft:marker,tag=vt_tribute_barrel] run tellraw @p {"text":"没有找到符合条件的村民，本次税收失败。", "color":"yellow"}
execute unless entity @e[type=minecraft:marker,tag=vt_tribute_barrel] run tellraw @p {"text":"税收时间到，但从未指定过任何税箱！", "color":"red"}