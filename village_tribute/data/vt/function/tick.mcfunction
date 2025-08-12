

scoreboard players add global vt_timer 1

# 改为24000

execute if score global vt_timer matches 24000.. run function vt:daily_tribute

execute if score global vt_timer matches 24000.. run scoreboard players set global vt_timer 0


execute as @e[type=item,nbt={Item:{id:"minecraft:emerald"}},tag=!vt_processed_emerald] at @s run function vt:log_emerald_info
