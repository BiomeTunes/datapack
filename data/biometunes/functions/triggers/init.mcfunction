
# Initializing variables

scoreboard objectives add hasLeft minecraft.custom:minecraft.leave_game

# Sound track variables
scoreboard objectives add biome dummy "Current biome"
scoreboard objectives add soundtrackTimer dummy "Sound track timer"
scoreboard objectives add soundtrackState dummy "State of the sound track"
scoreboard objectives add bossfight dummy "Bosses close to players"

# Trigger variables
scoreboard objectives add biomeTunes trigger "Trigger for option menu"
scoreboard objectives add opt1 trigger "Trigger for biome transition mode"
scoreboard objectives add opt2 trigger "Trigger for biome shift message"

# Ambient variables
scoreboard objectives add biomeAmbient dummy "Current biome ambient"
scoreboard objectives add ambientTimer dummy "Ambient timer"
scoreboard objectives add ambientLength dummy "Length of ambient sound"

# In order to not spam chat when players are triggering menu panel
# gamerule sendCommandFeedback false

# Reseting players
scoreboard players reset * biome 
scoreboard players reset * hasLeft 

# Reset all advancements and music
function biometunes:triggers/reset

tellraw @s ["",{"text":"### Biometunes","color":"dark_green"},{"text":" ###\n","color":"dark_green"},{"text":"Datapack successfully installed!\n","color":"green","italic":true},{"text":"Current version: ","color":"green","italic":false},{"text":"v0.1\n","color":"green","bold":true,"clickEvent":{"action":"open_url","value":"https://github.com/Hampfh/BiomeTunes"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Open github repository","color":"green"}]}}},{"text":"To open the control panel type ","color":"green","bold":false},{"text":"/trigger biomeTunes","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger biomeTunes"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Open control panel","color":"green"}]}}}]

# {"command":"/tellraw @p %s","jobject":[{"text":"### Biometunes","color":"dark_green"},{"text":" ###\\n","color":"dark_green"},{"text":"Datapack successfully installed!\\n","color":"green","italic":true},{"text":"Current version: ","color":"green"},{"text":"v0.1\\n","color":"green","bold":true,"clickEvent":{"action":"open_url","value":"https://github.com/Hampfh/BiomeTunes"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Open github repository","color":"green"}]}}},{"text":"To open the control panel type ","color":"green"},{"text":"\trigger biomeTunes","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger biomeTunes"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Open control panel","color":"green"}]}}}],"jtemplate":"tellraw"}

# Biome index https://minecraft.gamepedia.com/Biome/ID

# Boss fights
# 0 No boss
# 1 Ender dragon
# 2 Wither
# 3 Elder guardian

# Active biomes
# 0 Ocean 
# 1 Plains 
# 2 Desert 
# 3 Mountains
# 4 Forest 
# 5 Taiga 
# 6 swamp
# 8 nether
# 9 the_end
# 10 frozen_ocean -> snowy
# 11 frozen_river -> snowy
# 12 snowy_tundra -> snowy
# 13 snowy_mountain -> snowy
# 14 mushroom_fields
# 15 mushroom_fields_shore -> mushroom_fields
# 16 beach
# 17 desert_hills -> desert
# 18 wooded_hills -> forest
# 19 taiga_hills -> taiga
# 20 mountain_edge -> mountains
# 22 jungle_hills -> jungle
# 23 jungle_edge -> jungle
# 24 deep_ocean -> ocean
# 27 birch_forest -> forest
# 28 birch_forest_hills -> forest
# 29 dark_forest
# 30 snowy_taiga -> snowy
# 31 snowy_taiga_hills -> snowy
# 32 giant_tree_taiga -> taiga
# 33 giant_tree_taiga_hills -> taiga
# 34 wooded_mountains -> mountains
# 35 savanna
# 36 savanna_plateau -> savanna
# 40 small_end_islands -> the_end
# 41 end_midlands -> the_end
# 42 end_highlands -> the_end
# 43 end_barrens -> the_end
# 44 warm_ocean -> ocean
# 45 lukewarm_ocean -> ocean
# 46 cold_ocean -> ocean
# 47 deep_warm_ocean -> ocean
# 48 deep_lukewarm_ocean -> ocean
# 49 deep_cold_ocean -> ocean
# 50 deep_frozen_ocean -> snowy
# 129 sunflower_plains -> plains
# 130 desert_lakes -> desert
# 131 gravelly_mountains -> mountains
# 132 flower_forest -> forest
# 133 taiga_mountains -> taiga
# 134 swamp_hills -> swamp
# 140 ice_spikes -> snowy
# 149 modified_jungle -> jungle
# 151 modified_jungle_edge -> jungle
# 155 tall_birch_forest -> forest
# 156 tall_birch_hills -> forest
# 157 dark_forest_hills -> dark_forest
# 158 snowy_taiga_mountains -> snowy
# 160 giant_spruce_taiga -> taiga
# 161 giant_spruce_taiga_hills -> taiga
# 162 modified_gravelly_mountains -> mountains
# 163 shattered_savanna -> savanna
# 164 shattered_savanna_plateau -> savanna
# 165 eroded_badlands -> mountains
# 168 bamboo_jungle -> jungle
# 169 bamboo_jungle_hills -> jungle