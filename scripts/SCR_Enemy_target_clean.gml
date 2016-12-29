///SCR_Enemy_target_clean()


//Unmark all enemy units
for(etc_i=0; etc_i<array_length_1d(Battle_progress.inst_id); etc_i+=1)
    if(Battle_progress.inst_id[etc_i].position>8)
        Battle_progress.inst_id[etc_i].targeted=0
Battle_progress.every_enemy = 0
