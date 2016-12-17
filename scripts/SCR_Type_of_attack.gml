///SCR_Type_of_attack()

//Based on which active object is currently active it choses which attack is perform
switch(object_get_name(Battle_progress.active_unit.object_index))
{
    case "Squire": 
    case "Fighter":
    case "Scout":
    {
        if(targeted==1)
        {
            SCR_DMG_Calculation(Battle_progress.active_unit,id)
            Battle_progress.queue_turn++
            Battle_progress.active_unit.active_turn=0
            SCR_Enemy_target_clean()
        }
    } break;
    case "Apprentice": 
    {
        if(targeted==1)
        {     
            for(apprentice_i=0; apprentice_i<array_length_1d(Battle_progress.inst_id); apprentice_i++)
            { 
                if(Battle_progress.inst_id[apprentice_i].position>8)
                    SCR_DMG_Calculation(Battle_progress.active_unit,Battle_progress.inst_id[apprentice_i].id)
            }
            Battle_progress.queue_turn++
            Battle_progress.active_unit.active_turn = 0             
            SCR_Enemy_target_clean()
        }
    } break;
    case "Acolyte":
    {
        if(targeted==1)
        {
            SCR_Heals_Calculation(Battle_progress.active_unit,id)
            Battle_progress.queue_turn++
            Battle_progress.active_unit.active_turn=0 
            SCR_Teammates_target_clean()
        }
    } break;
}


