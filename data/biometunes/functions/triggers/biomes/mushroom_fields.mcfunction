
# Set biome variable to plains
scoreboard players set @s biome 14

# Set soundtrack time
scoreboard players set @s soundtrackTimer 193360

tellraw @s[tag=receiveBiomeMsg] ["",{"text":"You entered a mushroom fields biome","color":"gray","italic":true}]

# Reset all advancements and music
function biometunes:triggers/reset