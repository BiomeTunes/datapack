
# Set biome variable to plains
scoreboard players set @s biome 9

tellraw @s[tag=receiveBiomeMsg] ["",{"text":"You entered the end","color":"gray","italic":true}]

# Reset all advancements and music
function biometunes:triggers/reset