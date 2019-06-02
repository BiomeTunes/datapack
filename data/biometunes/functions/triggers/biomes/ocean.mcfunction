
# Set biome variable to plains
scoreboard players set @s biome 0

tellraw @s[tag=receiveBiomeMsg] ["",{"text":"You entered an ocean biome","color":"gray","italic":true}]

# Reset all advancements and music
function biometunes:triggers/reset