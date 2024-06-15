#crafting
execute as @e[type=armor_stand,tag=LightningBow] at @s run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:bow"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:lightning_rod"}},distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["LightningBow"]}
execute as @e[type=armor_stand,tag=LightningBow] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:bow"}},distance=..0.25]
execute as @e[type=armor_stand,tag=LightningBow] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:lightning_rod"}},distance=..0.25]
execute as @e[type=armor_stand,tag=LightningBow] at @s run summon item ~ ~ ~ {Tags:["lightning_bow"],Item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":'{"bold":true,"color":"dark_red","text":"LightningStrike"}',"minecraft:lore":['{"color":"dark_purple","text":"Peter\'s Bow"}'],"minecraft:unbreakable":{},"minecraft:custom_model_data":1,"minecraft:enchantments":{levels:{"minecraft:infinity":1}}}}}


#power
execute at @a[scores={used_lightning_bow=1,equip_lightning_bow=1}] run tag @e[type=arrow,distance=0..2] add lightning_arrow

execute at @e[tag=lightning_arrow] run particle minecraft:electric_spark ~ ~ ~ 0.25 0.25 0.25 1 25 force

execute at @a[scores={equip_lightning_bow=1}] run tag @e[type=player,distance=0..1,limit=1] add lightning_caster

execute at @e[tag=lightning_arrow,nbt={inGround:0b}] run execute at @e[distance=1..5,tag=!lightning_caster] run summon minecraft:lightning_bolt ~ ~ ~

execute at @e[type=minecraft:lightning_bolt] run effect give @a[nbt={SelectedItem:{id:"minecraft:bow",count:1,components:{"minecraft:custom_model_data":1}}}] minecraft:resistance 5 255 true

execute at @e[type=minecraft:lightning_bolt] run effect give @a[nbt={SelectedItem:{id:"minecraft:bow",count:1,components:{"minecraft:custom_model_data":1}}}] minecraft:fire_resistance 5 255 true

execute at @e[type=minecraft:lightning_bolt] run kill @e[type=minecraft:arrow,tag=lightning_arrow,distance=..5]

tag @a remove lightning_caster

scoreboard players set @a equip_lightning_bow 0
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:bow",count:1,components:{"minecraft:custom_model_data":1}}}] equip_lightning_bow 1
scoreboard players set @a used_lightning_bow 0
