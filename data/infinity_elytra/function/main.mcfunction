#crafting
execute as @e[type=armor_stand,tag=InfinityElytra] at @s run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:elytra"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:firework_rocket"}},distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["InfinityElytra"]}
execute as @e[type=armor_stand,tag=InfinityElytra] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:elytra"}},distance=..0.25]
execute as @e[type=armor_stand,tag=InfinityElytra] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:firework_rocket"}},distance=..0.25]
execute as @e[type=armor_stand,tag=InfinityElytra] at @s run summon item ~ ~ ~ {Tags:["infinity_elytra"],Item:{id:"minecraft:elytra",count:1,components:{"minecraft:custom_name":'{"bold":true,"color":"dark_red","text":"Tempest Talons"}',"minecraft:lore":['{"color":"dark_purple","text":"Peter\'s Elytra"}'],"minecraft:unbreakable":{show_in_tooltip:false},"minecraft:custom_model_data":1,"minecraft:enchantments":{levels:{"minecraft:infinity":1},show_in_tooltip:false}}}}


#power
scoreboard players set @a equip_elytra 0
scoreboard players set @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",components:{"minecraft:enchantments":{levels:{"minecraft:infinity":1}}}}]}] equip_elytra 1

execute as @a[scores={equip_elytra=1},nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",components:{"minecraft:custom_model_data":1}}]}] run execute as @a[nbt=!{Inventory:[{id:"minecraft:firework_rocket"}]}] run give @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",components:{"minecraft:custom_model_data":1}}]}] firework_rocket[fireworks={flight_duration:3}]