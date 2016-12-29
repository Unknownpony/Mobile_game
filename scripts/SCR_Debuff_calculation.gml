///SCR_Debuff_calculation(obj)

unit_statues = argument0

//debuff
switch (unit_statues.debuff)
{
    
    case 1:     //poison
    case 2:     //freeze
        unit_statues.hp -= 20; break;
    case 3: //fire
        unit_statues.hp -= 20 - unit_statues.hp * 0.05; break;
    //Paralyse
    case 4: 
    {
        unit_statues.debuff = 0;
        return 1;
    } break;
}

if(unit_statues.hp <=0)
{
    unit_statues.hp = 0
    unit_statues.targeted=0
    SCR_Death_animation(unit_statues)
    Battle_progress.turn_queue = SCR_Delete_obj_with_0_HP(Battle_progress.turn_queue,1)
    Battle_progress.inst_id = SCR_Delete_obj_with_0_HP(Battle_progress.inst_id,0)
    return 2;
}


