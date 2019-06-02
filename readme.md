# Biome Tunes

This is a minecraft datapack which changes music for the player dependent on biome type

# Replace biome sound track with your own
1. Make sure the sound file you want to use is saved in `.ogg` format. This is very important since this is the only file extension supported by Minecraft, all other formats will not be executed.
2. Enter the biometunes resource pack and locate the folder `game`. 
3. Take your file and replace it with another file in this directory and name your file to the name of the biome you want it to play in.
4. When the file is integrated into the pack you know need to customize the data pack to let it know the length of the track. This is done by entering the file managing the selected biome. All biome function files are stored under `biometunes/data/biometunes/functions/triggers/<yourbiome>.mcfunction`. 
5. The value you want to change is the after `soundtrackTimer` on row 12, this is the length of your file in ticks. To calculate the length from seconds to ticks you need to multiply by 20. Example: You have a music file which is 44 seconds long, 44 * 20 = 880. 880 would be the value to enter in this case.
6. Congrats! You have now changed a music file for a biome and given the data pack the correct information about the length of the soundtrack