
# Set biome variable to plains
scoreboard players set @s biome 4

# Reset all advancements and music
function biometunes:triggers/reset

tellraw @s[tag=receiveBiomeMsg] ["",{"text":"You entered a forest biome","color":"gray","italic":true}]
