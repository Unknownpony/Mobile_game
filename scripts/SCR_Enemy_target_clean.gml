///SCR_Enemy_target_clean()

for(i=0; i<array_length_1d(Battle_progress.inst_id); i+=1)
    if(Battle_progress.inst_id[i].position>8)
        Battle_progress.inst_id[i].targeted=0

