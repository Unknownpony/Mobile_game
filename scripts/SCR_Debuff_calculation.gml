///SCR_Debuff_calculation(obj)

unit_statues = argument0


//debuff
switch (unit_statues.debuff)
{
    case 1:     //Stun
    case 2:     //Taunt
    {
        unit_statues.debuff_counter -= 1
        if(unit_statues.debuff_counter == 0)
        {
            unit_statues.debuff = 0
            unit_statues.taunted_by = 0
        }   
        return 1;
    } break;
    ////////////////////////////////////////////////////
    case 3:     //bleed
        unit_statues.debuff_counter -= 1
        unit_statues.hp -= floor(unit_statues.hp * 0.1); 
        break;
    case 4: //fire
        unit_statues.hp -= 20 - floor(unit_statues.hp * 0.05); 
        unit_statues.debuff_counter -= 1
        break;
    //Paralyse
    case 5: 
    {
        unit_statues.debuff = 0;
        unit_statues.debuff_counter -= 1
        return 1;
    } break;
    default: 
        return 0; 
    break;
}

if(unit_statues.debuff_counter == 0)
{
    unit_statues.debuff = 0
    unit_statues.taunted_by = 0
}   

if(unit_statues.hp <=0)
{
    unit_statues.hp = 0
    unit_statues.targeted=0
    SCR_Death_animation(unit_statues)
    Battle_progress.turn_queue = SCR_Delete_obj_with_0_HP(Battle_progress.turn_queue,1)
    Battle_progress.inst_id = SCR_Delete_obj_with_0_HP(Battle_progress.inst_id,0)
    return 1;
}

return 0


