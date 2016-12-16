///SCR_Call_battle(level, background) - call battle room

Game_flow.level = argument0
bg_name = argument1

room_set_background(RM_Battle_Room,0,1,0,argument1,160,0,0,0,0,0,0.8); 
room_goto(RM_Battle_Room)

