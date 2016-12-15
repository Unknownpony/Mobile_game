///SCR_Choice_target_system()

switch(object_get_name(Battle_progress.active_unit.object_index))
    {
        case "Squire": 
        {
            switch (Battle_progress.active_unit.type_of_attack)
            {
                case 0: 
                {
                    SCR_Target_one_enemy_melee(Battle_progress.active_unit.position, Battle_progress.inst_id)
                }
                break;
            }
        } break;
        case "Fighter": 
        {
            switch (Battle_progress.active_unit.type_of_attack)
            {
                case 0: 
                {
                    SCR_Target_one_enemy_melee(Battle_progress.active_unit.position, Battle_progress.inst_id)
                }
                break;
            }
        } break;
        case "Apprentice": 
        {
            switch (Battle_progress.active_unit.type_of_attack)
            {
                case 1: 
                {
                    SCR_Target_all_enemy(Battle_progress.inst_id)
                }
                break;
            }
        } break;
        case "Acolyte": 
        {
            switch (Battle_progress.active_unit.type_of_attack)
            {
                case 0: 
                {
                    SCR_Target_one_teammate_range(Battle_progress.inst_id)
                }
                break;
            }
        } break;
        case "Scout": 
        {
            switch (Battle_progress.active_unit.type_of_attack)
            {
                case 0: 
                {
                    SCR_Target_one_enemy_range(Battle_progress.inst_id)
                }
                break;
            }
        } break;
    }     
