scoreboard objectives remove hasLeft

scoreboard objectives remove biome 
scoreboard objectives remove biomeAmbient
scoreboard objectives remove biomeTunes
scoreboard objectives remove bossfight
scoreboard objectives remove opt1
scoreboard objectives remove opt2
scoreboard objectives remove opt3
scoreboard objectives remove ambientTimer
scoreboard objectives remove soundtrackTimer 
scoreboard objectives remove musicLength
scoreboard objectives remove ambientLength

tag @a remove playing 
tag @a remove playingAmbient
tag @a remove receiveBiomeMsg
tag @a remove receiveBossMsg
tag @a remove smoothTransition 
tag @a remove biomeTunesModerator

tellraw @s ["",{"text":"### Biometunes","color":"dark_green"},{"text":" ###\n","color":"dark_green"},{"text":"Current version: ","color":"green"},{"text":"v","color":"green","bold":true},{"score":{"name":"#bt_version_main","objective":"bt_pack_vars"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"#bt_version_second","objective":"bt_pack_vars"},"color":"green","bold":true},{"text":"\nWorld has been detached from datapack and cleared. Datapack ready for removal","color":"dark_red","italic":true,"bold":false}]
scoreboard objectives remove bt_pack_vars

# {"command":"/tellraw @p %s","jobject":[{"text":"### Biometunes","color":"dark_green"},{"text":" ###\\n","color":"dark_green"},{"text":"Current version: ","color":"green"},{"text":"v","color":"green","bold":true},{"score":{"name":"#bt_version_main","objective":"bt_pack_vars"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"#bt_version_second","objective":"bt_pack_vars"},"color":"green","bold":true},{"text":"\\nWorld has been detached from datapack and cleared. Datapack ready for removal","color":"dark_red","italic":true}],"jtemplate":"tellraw"}
