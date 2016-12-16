///SRC_AI_enemy(obj)

active = argument0

//Based on which enemy active unit is currently active chose AI system and targeting
switch(object_get_name(active.object_index))
{
    case "Orc": 
    {
        SCR_Target_one_teammate_melee(position,Battle_progress.inst_id)
        targets = SRC_List_of_targets()
        m=0
        death_marked=0
        hit_unit=0
        for (i=0; i<array_length_1d(targets); i+=1)
        {
            if(targets[i].hp<=ad)
            {
                death_marked[m]=targets[i]
                m++
            }
        }
        if(death_marked==0)
        {
            hit_unit = targets[0]
            for (i=1; i<array_length_1d(targets); i+=1)
            {
                if((hit_unit.hp/hit_unit.max_hp)>(targets[i].hp/targets[i].max_hp))
                    hit_unit=targets[i]
            }
        } else
        {
            if(array_length_1d(death_marked)=1)
                hit_unit=death_marked[0]
            else
            {
                hit_unit = death_marked[0]
                for (i=1; i<array_length_1d(death_marked); i+=1)
                {
                    if((hit_unit.hp/hit_unit.max_hp)>(death_marked[i].hp/death_marked[i].max_hp))
                        hit_unit=death_marked[i]
                }
            }
        }
        SCR_DMG_Calculation(id,hit_unit)       
        Battle_progress.queue_turn++
        Battle_progress.active_unit.active_turn=0 
        SCR_Teammates_target_clean()
    } break;
    case "Orc_shaman": 
    {
        SCR_Target_all_teammates(Battle_progress.inst_id)
        for(i=0; i<array_length_1d(Battle_progress.inst_id); i+=1)
            { 
                if(Battle_progress.inst_id[i].position<8)
                {
                    SCR_DMG_Calculation(id,Battle_progress.inst_id[i]) 
                    Battle_progress.inst_id[i].targeted=0
                }
            }
        Battle_progress.queue_turn++
        Battle_progress.active_unit.active_turn=0 
    } break;
}
