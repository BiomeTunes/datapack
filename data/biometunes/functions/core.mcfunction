
# Turn of default minecraft music
stopsound @a music minecraft:music.creative
stopsound @a music minecraft:music.credits
stopsound @a music minecraft:music.dragon
stopsound @a music minecraft:music.end
stopsound @a music minecraft:music.game
stopsound @a music minecraft:music.nether
stopsound @a music minecraft:music.under_water

# Biome specific music
execute at @a as @a[scores={biome=0},tag=!playing] run playsound ocean music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=1},tag=!playing] run playsound plains music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=2},tag=!playing] run playsound desert music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=3},tag=!playing] run playsound mountains music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=4},tag=!playing] run playsound forest music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=5},tag=!playing] run playsound taiga music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=6},tag=!playing] run playsound swamp music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=8},tag=!playing] run playsound nether music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=9},tag=!playing] run playsound the_end music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=10},tag=!playing] run playsound frozen_ocean music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=12},tag=!playing] run playsound snowy_tundra music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=13},tag=!playing] run playsound snowy_mountains music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=14},tag=!playing] run playsound mushroom_fields music @s ~ ~ ~ 1
execute at @a as @a[scores={biome=21},tag=!playing] run playsound jungle music @s ~ ~ ~ 1

# Add playing tag to all
execute as @a[tag=!playing] run tag @s add playing

# Restart music for reconnected clients
execute as @a[scores={hasLeft=1..}] run tag @s remove playing
execute as @a[scores={hasLeft=1..}] run scoreboard players set @s hasLeft 0