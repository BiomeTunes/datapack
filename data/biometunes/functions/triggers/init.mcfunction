
# Initializing variables
scoreboard objectives add biome dummy "Current biome"
scoreboard objectives add hasLeft minecraft.custom:minecraft.leave_game
scoreboard objectives add soundtrackTimer dummy "Sound track timer"
scoreboard objectives add soundtrackState dummy "State of the sound track"
scoreboard objectives add biomeTunes trigger "Trigger for option menu"
scoreboard objectives add opt1 trigger "Trigger for biome transition mode"

# In order to not spam chat when players are triggering menu panel
gamerule sendCommandFeedback false

# Reseting players
scoreboard players reset * biome 
scoreboard players reset * hasLeft 

# Reset all advancements and music
function biometunes:triggers/reset

# Biome index https://minecraft.gamepedia.com/Biome/ID

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
# 10 frozen_ocean -> taiga
# 11 frozen_river -> taiga
# 12 snowy_tundra -> taiga
# 13 snowy_mountain -> mountains
# 14 mushroom_fields
# 15 mushroom_fields_shore -> mushroom_fields
# 17 desert_hills -> desert
# 18 wooded_hills -> forest
# 19 taiga_hills -> taiga
# 20 mountain_edge -> mountains
# 22 jungle_hills -> jungle
# 23 jungle_edge -> jungle
# 24 deep_ocean -> ocean
# 27 birch_forest -> forest
# 28 birch_forest_hills -> forest
# 30 snowy_taiga -> taiga
# 31 snowy_taiga_hills -> taiga
# 32 giant_tree_taiga -> taiga
# 33 giant_tree_taiga_hills -> taiga
# 34 wooded_mountains -> mountains
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
# 50 deep_frozen_ocean -> ocean
# 129 sunflower_plains -> plains
# 130 desert_lakes -> desert
# 131 gravelly_mountains -> mountains
# 132 flower_forest -> forest
# 133 taiga_mountains -> taiga
# 134 swamp_hills -> swamp
# 149 modified_jungle -> jungle
# 151 modified_jungle_edge -> jungle
# 155 tall_birch_forest -> forest
# 156 tall_birch_hills -> forest
# 158 snowy_taiga_mountains -> taiga
# 160 giant_spruce_taiga -> taiga
# 161 giant_spruce_taiga_hills -> taiga
# 162 modified_gravelly_mountains -> mountains
# 163 shattered_savanna -> mountains
# 164 shattered_savanna_plateau -> mountains
# 165 eroded_badlands -> mountains
# 168 bamboo_jungle -> jungle
# 169 bamboo_jungle_hills -> jungle