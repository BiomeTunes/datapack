
# Set biome variable to plains
scoreboard players set @s biome 0

# Set soundtrack time
scoreboard players set @s soundtrackTimer 1480

tellraw @s[tag=receiveBiomeMsg] ["",{"text":"You entered an ocean biome","color":"gray","italic":true}]

# Reset all advancements and music
function biometunes:triggers/reset