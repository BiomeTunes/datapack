
# Stop sounds
stopsound @s music

# Remove advancement
execute unless score @s biome matches 0 run advancement revoke @s only biometunes:biomes/ocean
execute unless score @s biome matches 1 run advancement revoke @s only biometunes:biomes/plains
execute unless score @s biome matches 2 run advancement revoke @s only biometunes:biomes/desert
execute unless score @s biome matches 3 run advancement revoke @s only biometunes:biomes/mountains
execute unless score @s biome matches 4 run advancement revoke @s only biometunes:biomes/forest
execute unless score @s biome matches 5 run advancement revoke @s only biometunes:biomes/taiga
execute unless score @s biome matches 6 run advancement revoke @s only biometunes:biomes/swamp
execute unless score @s biome matches 8 run advancement revoke @s only biometunes:biomes/nether
execute unless score @s biome matches 9 run advancement revoke @s only biometunes:biomes/the_end
execute unless score @s biome matches 14 run advancement revoke @s only biometunes:biomes/mushroom_fields
execute unless score @s biome matches 21 run advancement revoke @s only biometunes:biomes/jungle

tag @s remove playing
