
# Enable all players to always trigger option menu
scoreboard players enable @a biomeTunes
scoreboard players enable @a opt1

## Detect menu trigger and setup control panel

# Display control panel
execute as @a[scores={biomeTunes=1..}] run tellraw @s ["",{"text":"=== BiomeTunes control panel ===\n","color":"dark_green"},{"text":"Smooth transition: ","color":"dark_gray","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Let the current track finish when changing biome","color":"gray"}]}}},{"text":"[on]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger opt1 set 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Turn on smooth transition","color":"green"}]}}},{"text":" ","color":"none","bold":false},{"text":"[off]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger opt1 set 2"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Turn off smooth transition","color":"red"}]}}}]

# Reset menu trigger
execute as @a[scores={biomeTunes=1..}] run scoreboard players set @s biomeTunes 0

# Manage options (1 is on, 2 is off)
execute as @a[scores={opt1=1}] run tag @s add smoothTransition
execute as @a[scores={opt1=1}] run tag @s add smoothTransition
execute as @a[scores={opt1=2}] run tag @s remove smoothTransition
execute as @a[scores={opt1=1..}] run tellraw @s ["",{"text":"Smooth Transition option updated!","color":"dark_green"}]
execute as @a[scores={opt1=1..}] run scoreboard players reset @s opt1