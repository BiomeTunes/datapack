
# Turn of default minecraft music
stopsound @a music minecraft:music.creative
stopsound @a music minecraft:music.credits
stopsound @a music minecraft:music.dragon
stopsound @a music minecraft:music.end
stopsound @a music minecraft:music.game
stopsound @a music minecraft:music.nether
stopsound @a music minecraft:music.under_water

# Biome specific intro music
execute at @a as @a[scores={biome=0, soundtrackState=1},tag=!playing] run playsound ocean_intro music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=1, soundtrackState=1},tag=!playing] run playsound plains_intro music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=2, soundtrackState=1},tag=!playing] run playsound desert_intro music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=3, soundtrackState=1},tag=!playing] run playsound mountains_intro music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=4, soundtrackState=1},tag=!playing] run playsound forest_intro music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=5, soundtrackState=1},tag=!playing] run playsound taiga_intro music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=6, soundtrackState=1},tag=!playing] run playsound swamp_intro music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=8, soundtrackState=1},tag=!playing] run playsound nether_intro music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=9, soundtrackState=1},tag=!playing] run playsound the_end_intro music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=14, soundtrackState=1},tag=!playing] run playsound mushroom_fields_intro music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=21, soundtrackState=1},tag=!playing] run playsound jungle_intro music @s ~ ~ ~ 1

# Biome specific music
execute at @a as @a[scores={biome=0, soundtrackState=2},tag=!playing] run playsound ocean music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=1, soundtrackState=2},tag=!playing] run playsound plains music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=2, soundtrackState=2},tag=!playing] run playsound desert music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=3, soundtrackState=2},tag=!playing] run playsound mountains music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=4, soundtrackState=2},tag=!playing] run playsound forest music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=5, soundtrackState=2},tag=!playing] run playsound taiga music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=6, soundtrackState=2},tag=!playing] run playsound swamp music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=8, soundtrackState=2},tag=!playing] run playsound nether music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=9, soundtrackState=2},tag=!playing] run playsound the_end music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=14, soundtrackState=2},tag=!playing] run playsound mushroom_fields music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=21, soundtrackState=2},tag=!playing] run playsound jungle music @s ~ ~ ~ 1

# Decrease soundtrack timer
execute as @a[tag=playing] run scoreboard players remove @s soundtrackTimer 1

# Add playing tag to all
execute as @a[tag=!playing] run tag @s add playing

# Restart music for reconnected clients
execute as @a[scores={hasLeft=1..}] run scoreboard players set @s soundtrackTimer 0
execute as @a[scores={hasLeft=1..}] run scoreboard players set @s soundtrackState 0

execute as @a[scores={hasLeft=1..}] run scoreboard players set @s hasLeft 0

# Reloop music
execute as @a[tag=playing, scores={soundtrackTimer=..0,biome=0}] run advancement revoke @s only biometunes:biomes/ocean
execute as @a[tag=playing, scores={soundtrackTimer=..0,biome=1}] run advancement revoke @s only biometunes:biomes/plains
execute as @a[tag=playing, scores={soundtrackTimer=..0,biome=2}] run advancement revoke @s only biometunes:biomes/desert
execute as @a[tag=playing, scores={soundtrackTimer=..0,biome=3}] run advancement revoke @s only biometunes:biomes/mountains
execute as @a[tag=playing, scores={soundtrackTimer=..0,biome=4}] run advancement revoke @s only biometunes:biomes/forest
execute as @a[tag=playing, scores={soundtrackTimer=..0,biome=5}] run advancement revoke @s only biometunes:biomes/taiga
execute as @a[tag=playing, scores={soundtrackTimer=..0,biome=6}] run advancement revoke @s only biometunes:biomes/swamp
execute as @a[tag=playing, scores={soundtrackTimer=..0,biome=8}] run advancement revoke @s only biometunes:biomes/nether
execute as @a[tag=playing, scores={soundtrackTimer=..0,biome=9}] run advancement revoke @s only biometunes:biomes/the_end
execute as @a[tag=playing, scores={soundtrackTimer=..0,biome=14}] run advancement revoke @s only biometunes:biomes/mushroom_fields
execute as @a[tag=playing, scores={soundtrackTimer=..0,biome=21}] run advancement revoke @s only biometunes:biomes/jungle