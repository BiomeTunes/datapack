
# Set biome variable to plains
scoreboard players set @s biome 4

# Set soundtrack time
scoreboard players set @s soundtrackTimer 2740

# Reset all advancements and music
function biometunes:triggers/reset

tellraw @s[tag=receiveBiomeMsg] ["",{"text":"You entered a forest biome","color":"gray","italic":true}]
