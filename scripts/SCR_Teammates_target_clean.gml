///SCR_Enemy_target_clean()

//Unmark all player units
for(i=0; i<array_length_1d(Battle_progress.inst_id); i+=1)
    if(Battle_progress.inst_id[i].position<9)
        Battle_progress.inst_id[i].targeted=0

