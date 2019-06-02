
# Set biome variable to plains
scoreboard players set @s biome 6

# Set soundtrack time
scoreboard players set @s soundtrackTimer 2740

tellraw @s[tag=receiveBiomeMsg] ["",{"text":"You entered a swamp biome","color":"gray","italic":true}]

# Reset all advancements and music
function biometunes:triggers/reset