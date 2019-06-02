
# Set biome variable to plains
scoreboard players set @s biome 9

# Set soundtrack time
scoreboard players set @s soundtrackTimer 193360

tellraw @s[tag=receiveBiomeMsg] ["",{"text":"You entered the end","color":"gray","italic":true}]

# Reset all advancements and music
function biometunes:triggers/reset