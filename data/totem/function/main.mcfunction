#crafting
execute as @e[type=armor_stand,tag=TotemOfInfinity] at @s run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{levels:{"minecraft:infinity":1}}}}},distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["TotemOfInfinity"]}
execute as @e[type=armor_stand,tag=TotemOfInfinity] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{levels:{"minecraft:infinity":1}}}}},distance=..0.25]
execute as @e[type=armor_stand,tag=TotemOfInfinity] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}},distance=..0.25]
execute as @e[type=armor_stand,tag=TotemOfInfinity] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",count:1,components:{"minecraft:custom_name":'{"bold":true,"color":"dark_red","text":"Totem of Immortality"}',"minecraft:lore":['{"color":"dark_purple","text":"Peter\'s Totem"}'],"minecraft:enchantments":{levels:{"minecraft:infinity":1},show_in_tooltip:false}}}}


#power
item replace entity @a[scores={used_totem=1,equip_totem=1}] weapon.offhand with totem_of_undying[custom_name='{"bold":true,"color":"dark_red","text":"Totem of Immortality"}',lore=['{"color":"dark_purple","text":"Peter\'s Totem"}'],enchantments={levels:{"minecraft:infinity":1},show_in_tooltip:false}]
item replace entity @a[scores={used_totem=1,equip_totem=2}] weapon.mainhand with totem_of_undying[custom_name='{"bold":true,"color":"dark_red","text":"Totem of Immortality"}',lore=['{"color":"dark_purple","text":"Peter\'s Totem"}'],enchantments={levels:{"minecraft:infinity":1},show_in_tooltip:false}]
effect give @a[scores={used_totem=1,equip_totem=1}] saturation 1 255 true
effect give @a[scores={used_totem=1,equip_totem=2}] saturation 1 255 true

scoreboard players set @a equip_totem 0
scoreboard players set @a[nbt={Inventory:[{Slot:-106b,components:{"minecraft:enchantments":{levels:{"minecraft:infinity":1}}},id:"minecraft:totem_of_undying"}]}] equip_totem 1
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:totem_of_undying",components:{"minecraft:enchantments":{levels:{"minecraft:infinity":1}}}}}] equip_totem 2
scoreboard players set @a used_totem 0
