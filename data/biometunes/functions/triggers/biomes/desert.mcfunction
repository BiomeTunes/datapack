
# Set biome variable to plains
scoreboard players set @s biome 2

# Set soundtrack time
scoreboard players set @s soundtrackTimer 4980

tellraw @s[tag=receiveBiomeMsg] ["",{"text":"You entered a desert biome","color":"gray","italic":true}]

# Reset all advancements and music
function biometunes:triggers/reset