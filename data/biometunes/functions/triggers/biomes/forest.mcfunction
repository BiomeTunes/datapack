function biometunes:triggers/prebiome

# Enable intro track
execute unless score @s biome matches 4 run tellraw @s[tag=receiveBiomeMsg, scores={soundtrackState=1}] ["",{"text":"You entered a forest biome","color":"gray","italic":true}]

# Set biome variables to forest
scoreboard players set @s biome 4
scoreboard players set @s biomeAmbient 4

# Set soundtrack time
scoreboard players set @s musicLength 2740
scoreboard players operation @s[tag=!playing] soundtrackTimer = @s[tag=!playing] musicLength

# Set ambient time
scoreboard players set @s ambientLength 580
scoreboard players operation @s[tag=!playingAmbient] ambientTimer = @s[tag=!playingAmbient] ambientLength

# Reset all advancements and music
function biometunes:triggers/reset