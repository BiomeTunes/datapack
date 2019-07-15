# Turn of default minecraft music
stopsound @a music minecraft:music.creative
stopsound @a music minecraft:music.credits
stopsound @a music minecraft:music.dragon
stopsound @a music minecraft:music.end
stopsound @a music minecraft:music.game
stopsound @a music minecraft:music.nether
stopsound @a music minecraft:music.under_water

# Check for bosses
function biometunes:triggers/updatebosses

# Play biome specific music
execute at @a as @a[scores={bossfight=0, soundtrackTimer=10.., biome=0},tag=!playing] run playsound ocean music @s ~ ~ ~ 1
execute at @a as @a[scores={bossfight=0, soundtrackTimer=10.., biome=1},tag=!playing] run playsound plains music @s ~ ~ ~ 1
execute at @a as @a[scores={bossfight=0, soundtrackTimer=10.., biome=2},tag=!playing] run playsound desert music @s ~ ~ ~ 1
execute at @a as @a[scores={bossfight=0, soundtrackTimer=10.., biome=3},tag=!playing] run playsound mountains music @s ~ ~ ~ 1
execute at @a as @a[scores={bossfight=0, soundtrackTimer=10.., biome=4},tag=!playing] run playsound forest music @s ~ ~ ~ 1
execute at @a as @a[scores={bossfight=0, soundtrackTimer=10.., biome=5},tag=!playing] run playsound taiga music @s ~ ~ ~ 1
execute at @a as @a[scores={bossfight=0, soundtrackTimer=10.., biome=6},tag=!playing] run playsound swamp music @s ~ ~ ~ 1
execute at @a as @a[scores={bossfight=0, soundtrackTimer=10.., biome=8},tag=!playing] run playsound nether music @s ~ ~ ~ 1
execute at @a as @a[scores={bossfight=0, soundtrackTimer=10.., biome=9},tag=!playing] run playsound the_end music @s ~ ~ ~ 1
execute at @a as @a[scores={bossfight=0, soundtrackTimer=10.., biome=12},tag=!playing] run playsound snowy music @s ~ ~ ~ 1
execute at @a as @a[scores={bossfight=0, soundtrackTimer=10.., biome=14},tag=!playing] run playsound mushroom_fields music @s ~ ~ ~ 1
execute at @a as @a[scores={bossfight=0, soundtrackTimer=10.., biome=21},tag=!playing] run playsound jungle music @s ~ ~ ~ 1
execute at @a as @a[scores={bossfight=0, soundtrackTimer=10.., biome=29},tag=!playing] run playsound dark_forest music @s ~ ~ ~ 1
execute at @a as @a[scores={bossfight=0, soundtrackTimer=10.., biome=35},tag=!playing] run playsound savanna music @s ~ ~ ~ 1
# Play boss music
execute at @a as @a[scores={bossfight=1, soundtrackTimer=10..},tag=!playing] run playsound ender_dragon music @s ~ ~ ~ 1
execute at @a as @a[scores={bossfight=2, soundtrackTimer=10..},tag=!playing] run playsound wither music @s ~ ~ ~ 1
execute at @a as @a[scores={bossfight=3, soundtrackTimer=10..},tag=!playing] run playsound elder_guardian music @s ~ ~ ~ 1

# Ambient tracks
execute at @a as @a[scores={ambientTimer=10.., biomeAmbient=4},tag=!playingAmbient] run playsound ambient_forest ambient @s ~ ~ ~ 1000 1 1
execute at @a as @a[scores={ambientTimer=10.., biomeAmbient=16},tag=!playingAmbient] run playsound ambient_beach ambient @s ~ ~ ~ 1

# Add playing tag to all
execute as @a[tag=!playing] run tag @s add playing
execute as @a[tag=!playingAmbient] run tag @s add playingAmbient

# Restart music for reconnected clients
execute as @a[scores={hasLeft=1..}] run scoreboard players set @s soundtrackTimer 0
execute as @a[scores={hasLeft=1..}] run scoreboard players set @s ambientTimer 0

execute as @a[scores={hasLeft=1..}] run scoreboard players set @s hasLeft 0

# Decrease soundtrack timer
execute as @a[tag=playing, scores={soundtrackTimer=1..}] run scoreboard players remove @s soundtrackTimer 1
# Decrease ambient timer
execute as @a[tag=playingAmbient, scores={ambientTimer=1..}] run scoreboard players remove @s ambientTimer 1

# Resetting music
execute as @a[tag=playing, scores={soundtrackTimer=0}] run stopsound @s music
execute as @a[tag=playing, scores={soundtrackTimer=0}] run tag @s remove playing
# Reloop biome music
execute as @a[tag=!playing, scores={soundtrackTimer=0}] run scoreboard players operation @s soundtrackTimer = @s musicLength

# Resetting ambient
execute as @a[tag=playingAmbient, scores={ambientTimer=0}] run stopsound @s ambient
execute as @a[tag=playingAmbient, scores={ambientTimer=0}] run tag @s remove playingAmbient
# Reloop ambient sounds
execute as @a[tag=!playingAmbient, scores={ambientTimer=0}] run scoreboard players operation @s ambientTimer = @s ambientLength