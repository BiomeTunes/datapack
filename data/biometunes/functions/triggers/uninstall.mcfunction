scoreboard objectives remove biome 
scoreboard objectives remove biomeAmbient
scoreboard objectives remove biomeTunes
scoreboard objectives remove hasLeft
scoreboard objectives remove bossfight
scoreboard objectives remove opt1
scoreboard objectives remove opt2
scoreboard objectives remove ambientTimer
scoreboard objectives remove soundtrackState
scoreboard objectives remove soundtrackTimer 
scoreboard objectives remove ambientLength

tag @a remove playing 
tag @a remove playingAmbient
tag @a remove receiveBiomeMsg
tag @a remove receiveBossMsg
tag @a remove smoothTransition
tag @a remove biomeTunesModerator

tellraw @s ["",{"text":"### Biometunes","color":"dark_green"},{"text":" ###","color":"dark_green"},{"text":"\nDatapack has been cleared and prepared for uninstall","color":"dark_red","italic":true}]

# {"command":"/tellraw @p %s","jobject":[{"text":"### Biometunes","color":"dark_green"},{"text":" ###","color":"dark_green"},{"text":"\\nDatapack has been cleared and prepared for uninstall","color":"dark_red","italic":true}],"jtemplate":"tellraw"}