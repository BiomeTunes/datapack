
# Set biome variable to plains
scoreboard players set @s biome 21

# Set soundtrack time
scoreboard players set @s soundtrackTimer 2440

tellraw @s[tag=receiveBiomeMsg] ["",{"text":"You entered a jungle biome","color":"gray","italic":true}]

# Reset all advancements and music
function biometunes:triggers/reset