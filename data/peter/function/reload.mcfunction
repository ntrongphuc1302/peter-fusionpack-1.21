title @a title {"bold":true,"color":"dark_red","text":"Peter's Datapack"}

# playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1 1

# Totem of Immortality
scoreboard objectives add equip_totem dummy
scoreboard objectives add used_totem minecraft.used:minecraft.totem_of_undying

# Arrow
kill @e[type=minecraft:arrow]

# LightningStrike
scoreboard objectives add equip_lightning_bow dummy
scoreboard objectives add used_lightning_bow minecraft.used:minecraft.bow

# Tempest Talons
scoreboard objectives add equip_elytra dummy

# Infinity Ignition
scoreboard objectives add equip_firework_rocket dummy

# Dimensional Arrowcaster
scoreboard objectives add equip_teleport_bow dummy
scoreboard objectives add used_teleport_bow minecraft.used:minecraft.bow

# Spatial Scepter
scoreboard objectives add equip_teleport_stick dummy