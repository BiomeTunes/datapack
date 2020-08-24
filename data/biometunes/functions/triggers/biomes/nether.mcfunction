function biometunes:triggers/prebiome

# Always reset music when entering the nether
tag @s remove playing

# Enable intro track
execute unless score @s biome matches 8 run tellraw @s[tag=receiveBiomeMsg] ["",{"text":"You entered the nether","color":"gray","italic":true}]

# Set biome variable to plains
scoreboard players set @s biome 8
scoreboard players set @s biomeAmbient 8

# Set soundtrack time
scoreboard players set @s musicLength 2440
scoreboard players operation @s[tag=!playing] musicTimer = @s[tag=!playing] musicLength

# Set ambient time
scoreboard players set @s ambientLength 0
scoreboard players operation @s[tag=!playingAmbient] ambientTimer = @s[tag=!playingAmbient] ambientLength

# Reset all advancements and music
function biometunes:triggers/reset