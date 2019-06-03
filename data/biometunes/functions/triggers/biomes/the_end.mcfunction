# Reset music if player switches dimension
execute if score @s biome matches 8 run tag @s remove playing
execute if score @s biome matches 8 run stopsound @s
execute if score @s biome matches 9 run tag @s remove playing
execute if score @s biome matches 9 run stopsound @s

# Hard reset music if not smooth transition
execute as @s[tag=!smoothTransition] run tag @s remove playing
execute as @s[tag=!smoothTransition] run stopsound @s

# Always reset music when entering the end
tag @s remove playing

# Enable intro track
execute unless score @s biome matches 9 run scoreboard players set @s soundtrackState 1
execute if score @s soundtrackState matches 0 run scoreboard players set @s soundtrackState 1
tellraw @s[tag=receiveBiomeMsg, scores={soundtrackState=1}] ["",{"text":"You entered the end","color":"gray","italic":true}]

# Enable main track 
scoreboard players set @s soundtrackState 2

# Set biome variable to plains
scoreboard players set @s biome 9

# Set soundtrack time
execute if score @s soundtrackState matches 2 run scoreboard players set @s[tag=!playing] soundtrackTimer 193360

# Reset all advancements and music
function biometunes:triggers/reset