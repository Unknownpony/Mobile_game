///SCR_Enemy_target_clean()

//Unmark all player units
for(ttc_i=0; ttc_i<array_length_1d(Battle_progress.inst_id); ttc_i+=1)
    if(Battle_progress.inst_id[ttc_i].position<9)
        Battle_progress.inst_id[ttc_i].targeted=0

