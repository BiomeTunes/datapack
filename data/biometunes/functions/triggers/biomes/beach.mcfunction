
# Set biome variable to plains
scoreboard players set @s biomeOverlay 16

# Set overlay time
scoreboard players set @s[tag=!playingOverlay] overlayTimer 360

# Reset all advancements and music
function biometunes:triggers/reset