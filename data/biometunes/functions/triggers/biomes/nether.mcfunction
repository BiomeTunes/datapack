
# Set biome variable to plains
scoreboard players set @s biome 8

tellraw @s[tag=receiveBiomeMsg] ["",{"text":"You entered the nether","color":"gray","italic":true}]

# Reset all advancements and music
function biometunes:triggers/reset