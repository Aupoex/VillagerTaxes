


execute unless entity @e[type=minecraft:marker,tag=vt_tribute_barrel,distance=..1] run item modify entity @e[type=item,nbt={Item:{id:"minecraft:emerald"}},distance=..2,limit=1,sort=nearest] contents {"function":"minecraft:set_count","count":-1,"add":true}


execute unless entity @e[type=minecraft:marker,tag=vt_tribute_barrel,distance=..1] run summon minecraft:marker ~ ~ ~ {Tags:["vt_tribute_barrel"]}


execute unless entity @e[type=minecraft:marker,tag=vt_tribute_barrel,distance=..1] run tellraw @p {"text":"这个木桶已被指定为税箱！", "color":"gold"}

