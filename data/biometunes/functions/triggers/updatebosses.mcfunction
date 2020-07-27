# Reset bossfight if no bosses closer than 200 blocks

execute at @s unless entity @e[type=minecraft:ender_dragon, distance=..200] unless entity @e[type=minecraft:wither, distance=..200] unless entity @e[type=minecraft:elder_guardian, distance=..200] run scoreboard players set @s bossfight 0

# Perform for all players close to an ender dragon
execute at @s[tag=!playing] if entity @e[type=minecraft:ender_dragon, limit=1, sort=nearest, distance=..200] run function biometunes:triggers/bosses/ender_dragon

# Check which players are close to a wither
execute at @s[tag=!playing] if entity @e[type=minecraft:wither, limit=1, sort=nearest, distance=..200] run function biometunes:triggers/bosses/wither
#
## Check which players are close to an elder guardian
#execute at @e[type=minecraft:elder_guardian] run execute as @a[distance=..200, scores={bossfight=0}] at @s run scoreboard players set @s bossfight 2
#execute at @e[type=minecraft:elder_guardian] run execute as @a[distance=..200, scores={bossfight=3}] at @s run function biometunes:triggers/bosses/elder_guardian