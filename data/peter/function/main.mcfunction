# Totem of Immortality
#Crafting
execute as @e[type=armor_stand,tag=TotemOfInfinity] at @s run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{levels:{"minecraft:infinity":1}}}}},distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["TotemOfInfinity"]}
execute as @e[type=armor_stand,tag=TotemOfInfinity] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{levels:{"minecraft:infinity":1}}}}},distance=..0.25]
execute as @e[type=armor_stand,tag=TotemOfInfinity] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}},distance=..0.25]
execute as @e[type=armor_stand,tag=TotemOfInfinity] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying",count:1,components:{"minecraft:custom_name":'{"bold":true,"color":"dark_red","text":"Totem of Immortality"}',"minecraft:lore":['{"color":"dark_purple","text":"Peter\'s Totem"}'],"minecraft:enchantments":{levels:{"minecraft:infinity":1},show_in_tooltip:false}}}}

#Power
item replace entity @a[scores={used_totem=1,equip_totem=1}] weapon.offhand with totem_of_undying[custom_name='{"bold":true,"color":"dark_red","text":"Totem of Immortality"}',lore=['{"color":"dark_purple","text":"Peter\'s Totem"}'],enchantments={levels:{"minecraft:infinity":1},show_in_tooltip:false}]
item replace entity @a[scores={used_totem=1,equip_totem=2}] weapon.mainhand with totem_of_undying[custom_name='{"bold":true,"color":"dark_red","text":"Totem of Immortality"}',lore=['{"color":"dark_purple","text":"Peter\'s Totem"}'],enchantments={levels:{"minecraft:infinity":1},show_in_tooltip:false}]
effect give @a[scores={used_totem=1,equip_totem=1}] saturation 1 255 true
effect give @a[scores={used_totem=1,equip_totem=2}] saturation 1 255 true
effect give @a[scores={used_totem=1,equip_totem=1}] resistance 5 255 true
effect give @a[scores={used_totem=1,equip_totem=2}] resistance 5 255 true
scoreboard players set @a equip_totem 0
scoreboard players set @a[nbt={Inventory:[{Slot:-106b,components:{"minecraft:enchantments":{levels:{"minecraft:infinity":1}}},id:"minecraft:totem_of_undying"}]}] equip_totem 1
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:totem_of_undying",components:{"minecraft:enchantments":{levels:{"minecraft:infinity":1}}}}}] equip_totem 2
scoreboard players set @a used_totem 0


# LightningStrike
#Crafting
execute as @e[type=armor_stand,tag=LightningBow] at @s run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:bow"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:lightning_rod"}},distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["LightningBow"]}
execute as @e[type=armor_stand,tag=LightningBow] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:bow"}},distance=..0.25]
execute as @e[type=armor_stand,tag=LightningBow] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:lightning_rod"}},distance=..0.25]
execute as @e[type=armor_stand,tag=LightningBow] at @s run summon item ~ ~ ~ {Tags:["lightning_bow"],Item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":'{"bold":true,"color":"dark_red","text":"LightningStrike"}',"minecraft:lore":['{"color":"dark_purple","text":"Peter\'s Bow"}'],"minecraft:unbreakable":{show_in_tooltip:false},"minecraft:custom_model_data":1,"minecraft:enchantments":{levels:{"minecraft:infinity":1},show_in_tooltip:false}}}}

#Power
execute at @a[scores={used_lightning_bow=1,equip_lightning_bow=1}] run tag @e[type=arrow,distance=0..2] add lightning_arrow
execute at @e[tag=lightning_arrow] run particle minecraft:electric_spark ~ ~ ~ 0.25 0.25 0.25 1 25 force
execute at @a[scores={equip_lightning_bow=1}] run tag @e[type=player,distance=0..1,limit=1] add lightning_caster
execute at @e[tag=lightning_arrow,nbt={inGround:0b}] run execute at @e[distance=1..5,tag=!lightning_caster,type=!wolf,type=!cat,type=!allay,type=!villager,type=!wandering_trader,type=!armor_stand,type=!boat,type=!experience_orb,type=!item_frame,type=!glow_item_frame,type=!item,type=!leash_knot,type=!painting,type=!trident,type=!turtle,type=!axolotl,type=!bee] run summon minecraft:lightning_bolt ~ ~ ~
execute at @e[type=minecraft:lightning_bolt] run effect give @a[nbt={SelectedItem:{id:"minecraft:bow",count:1,components:{"minecraft:custom_model_data":1}}}] minecraft:resistance 5 255 true
execute at @e[type=minecraft:lightning_bolt] run effect give @a[nbt={SelectedItem:{id:"minecraft:bow",count:1,components:{"minecraft:custom_model_data":1}}}] minecraft:fire_resistance 5 255 true
# execute at @e[type=minecraft:lightning_bolt] run kill @e[type=minecraft:arrow,tag=lightning_arrow,distance=..5]
execute at @e[type=minecraft:lightning_bolt] run kill @e[type=minecraft:arrow,distance=..5]
tag @a remove lightning_caster
scoreboard players set @a equip_lightning_bow 0
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:bow",count:1,components:{"minecraft:custom_model_data":1}}}] equip_lightning_bow 1
scoreboard players set @a used_lightning_bow 0

#Arrow
execute at @a[nbt={SelectedItem:{id:"minecraft:bow",count:1,components:{"minecraft:custom_model_data":1}}}] run execute as @a[nbt=!{Inventory:[{id:"minecraft:arrow"}]}] run give @s minecraft:arrow 1


# Tempest Talons
#Crafting
execute as @e[type=armor_stand,tag=InfinityElytra] at @s run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:elytra"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:firework_rocket"}},distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["InfinityElytra"]}
execute as @e[type=armor_stand,tag=InfinityElytra] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:elytra"}},distance=..0.25]
execute as @e[type=armor_stand,tag=InfinityElytra] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:firework_rocket"}},distance=..0.25]
execute as @e[type=armor_stand,tag=InfinityElytra] at @s run summon item ~ ~ ~ {Tags:["infinity_elytra"],Item:{id:"minecraft:elytra",count:1,components:{"minecraft:custom_name":'{"bold":true,"color":"dark_red","text":"Tempest Talons"}',"minecraft:lore":['{"color":"dark_purple","text":"Peter\'s Elytra"}'],"minecraft:unbreakable":{show_in_tooltip:false},"minecraft:custom_model_data":1,"minecraft:enchantments":{levels:{"minecraft:infinity":1},show_in_tooltip:false}}}}

#Power
scoreboard players set @a equip_elytra 0
scoreboard players set @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",components:{"minecraft:enchantments":{levels:{"minecraft:infinity":1}}}}]}] equip_elytra 1
execute as @a[scores={equip_elytra=1},nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",components:{"minecraft:custom_model_data":1}}]}] run execute as @a[nbt=!{Inventory:[{id:"minecraft:firework_rocket"}]}] run give @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",components:{"minecraft:custom_model_data":1}}]}] firework_rocket[custom_name='{"bold":true,"color":"dark_red","text":"Infinite Ignition"}',lore=['{"color":"dark_purple","text":"Peter\'s Rocket"}'],hide_additional_tooltip={},custom_model_data=1,enchantments={levels:{"minecraft:infinity":1},show_in_tooltip:false},fireworks={flight_duration:3}]
execute as @a[scores={equip_elytra=1,hold_firework_rocket=1},nbt={SelectedItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:custom_model_data":1}}},nbt={FallFlying:1b}] at @s run tp @s ^ ^0.1 ^
execute as @a[scores={equip_elytra=1,hold_firework_rocket=1},nbt={SelectedItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:custom_model_data":1}}},nbt={FallFlying:1b}] at @s run effect give @s minecraft:resistance 1 255 true
scoreboard players set @a hold_firework_rocket 0
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:custom_model_data":1}}}] hold_firework_rocket 1


# Dimensional Arrowcaster
#Crafting
execute as @e[type=armor_stand,tag=TeleportBow] at @s run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:bow"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}},distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["TeleportBow"]}
execute as @e[type=armor_stand,tag=TeleportBow] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:bow"}},distance=..0.25]
execute as @e[type=armor_stand,tag=TeleportBow] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}},distance=..0.25]
execute as @e[type=armor_stand,tag=TeleportBow] at @s run summon item ~ ~0.1 ~ {Tags:["teleport_bow"],Item:{id:"minecraft:bow",count:1,components:{"minecraft:custom_name":'{"bold":true,"color":"dark_red","text":"Dimensional Arrowcaster"}',"minecraft:lore":['{"color":"dark_purple","text":"Peter\'s Bow"}'],"minecraft:unbreakable":{show_in_tooltip:false},"minecraft:custom_model_data":2,"minecraft:enchantments":{levels:{"minecraft:infinity":1},show_in_tooltip:false}}}}

#Power
execute at @a[scores={used_teleport_bow=1,equip_teleport_bow=1}] run tag @e[type=arrow,distance=0..2] add teleport_arrow
execute at @a[scores={used_teleport_bow=1,equip_teleport_bow=1},nbt={SelectedItem:{id:"minecraft:bow",count:1,components:{"minecraft:custom_model_data":2}}}] run tag @e[type=player,distance=0..1,limit=1] add teleporter
execute at @e[tag=teleport_arrow,nbt={inGround:1b}] run effect give @a[nbt={SelectedItem:{id:"minecraft:bow",count:1,components:{"minecraft:custom_model_data":2}}}] minecraft:resistance 5 255 true
execute at @e[tag=teleport_arrow,nbt={inGround:1b}] run tp @e[tag=teleporter,limit=1]
execute at @e[type=arrow,tag=teleport_arrow,nbt={inGround:1b}] run playsound minecraft:entity.enderman.teleport master @e[type=player,distance=..15] ~ ~ ~ 100
execute as @e[type=player,tag=teleporter,limit=1] at @s run particle minecraft:portal ~ ~0.75 ~ 0.5 0.5 0.5 2 50 force @e[type=player,tag=teleporter,limit=1]
execute as @e[type=arrow,tag=teleport_arrow,nbt={inGround:1b}] at @s run particle minecraft:portal ~ ~0.75 ~ 0.5 0.5 0.5 2 300 force @e[type=player,tag=teleporter,limit=1]
execute if entity @e[type=arrow,tag=teleport_arrow,nbt={inGround:1b}] run execute as @e[type=player,tag=teleporter,limit=1] at @s run playsound minecraft:entity.enderman.teleport master @e[type=player,distance=..15] ~ ~ ~ 100
execute as @e[type=player,tag=teleporter,limit=1] at @s if entity @e[type=arrow,tag=teleport_arrow,nbt={inGround:1b}] run teleport @e[type=player,tag=teleporter,limit=1] @e[type=arrow,tag=teleport_arrow,limit=1]
execute at @e[tag=teleport_arrow,nbt={inGround:1b}] run tag @a remove teleporter
execute at @e[tag=teleport_arrow,nbt={inGround:1b}] run kill @e[type=arrow,tag=teleport_arrow,distance=..5]
scoreboard players set @a equip_teleport_bow 0
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:bow",count:1,components:{"minecraft:custom_model_data":2}}}] equip_teleport_bow 1
scoreboard players set @a used_teleport_bow 0

#Arrow
execute at @a[nbt={SelectedItem:{id:"minecraft:bow",count:1,components:{"minecraft:custom_model_data":2}}}] run execute as @a[nbt=!{Inventory:[{id:"minecraft:arrow"}]}] run give @s minecraft:arrow 1


# Spatial Scepter
#Crafting
execute as @e[type=armor_stand,tag=TeleportStick] at @s run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:stick"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}},distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["TeleportStick"]}
execute as @e[type=armor_stand,tag=TeleportStick] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..0.25]
execute as @e[type=armor_stand,tag=TeleportStick] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}},distance=..0.25]
execute as @e[type=armor_stand,tag=TeleportStick] at @s run summon item ~ ~0.1 ~ {Tags:["teleport_stick"],Item:{id:"minecraft:stick",count:1,components:{"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000},"minecraft:custom_name":'{"bold":true,"color":"dark_red","text":"Spatial Scepter"}',"minecraft:lore":['{"color":"dark_purple","text":"Peter\'s Scepter"}'],"minecraft:unbreakable":{show_in_tooltip:false},"minecraft:custom_model_data":1,"minecraft:enchantments":{levels:{"minecraft:infinity":1},show_in_tooltip:false}}}}

# Power
advancement revoke @a only peter:teleport_stick
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~
execute as @a[scores={equip_teleport_stick=1},nbt={SelectedItem:{id:"minecraft:stick",count:1,components:{"minecraft:custom_model_data":1}}}] at @s run tp @s ^ ^ ^5

scoreboard players set @a equip_teleport_stick 0
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:stick",count:1,components:{"minecraft:custom_model_data":1}}}] equip_teleport_stick 1


# Apple of Eternal Satiation
#Crafting
execute as @e[type=armor_stand,tag=EternalApple] at @s run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:golden_carrot"}},distance=..0.25] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["EternalApple"]}
execute as @e[type=armor_stand,tag=EternalApple] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}},distance=..0.25]
execute as @e[type=armor_stand,tag=EternalApple] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:golden_carrot"}},distance=..0.25]
execute as @e[type=armor_stand,tag=EternalApple] at @s run summon item ~ ~0.1 ~ {Tags:["eternal_apple"],Item:{id:"minecraft:enchanted_golden_apple",count:1,components:{"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000},"minecraft:custom_name":'{"bold":true,"color":"dark_red","text":"Apple of Eternal Satiation"}',"minecraft:lore":['{"color":"dark_purple","text":"Peter\'s Apple"}'],"minecraft:unbreakable":{show_in_tooltip:false},"minecraft:custom_model_data":1,"minecraft:enchantments":{levels:{"minecraft:infinity":1},show_in_tooltip:false}}}}

#Power
effect give @e[scores={have_eternal_apple=1}] minecraft:saturation 1 255 true
scoreboard players set @a have_eternal_apple 0
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:enchanted_golden_apple",count:1,components:{"minecraft:custom_model_data":1}}}] have_eternal_apple 1