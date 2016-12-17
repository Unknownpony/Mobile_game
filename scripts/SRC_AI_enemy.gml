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
        for (ai_i=0; ai_i<array_length_1d(targets); ai_i+=1)
        {
            if(targets[ai_i].hp<=ad)
            {
                death_marked[m]=targets[ai_i]
                m++
            }
        }
        if(death_marked==0)
        {
            hit_unit = targets[0]
            for (ai_i=1; ai_i<array_length_1d(targets); ai_i+=1)
            {
                if((hit_unit.hp/hit_unit.max_hp)>(targets[ai_i].hp/targets[ai_i].max_hp))
                    hit_unit=targets[ai_i]
            }
        } else
        {
            if(array_length_1d(death_marked)=1)
                hit_unit=death_marked[0]
            else
            {
                hit_unit = death_marked[0]
                for (ai_i=1; ai_i<array_length_1d(death_marked); ai_i+=1)
                {
                    if((hit_unit.hp/hit_unit.max_hp)>(death_marked[ai_i].hp/death_marked[ai_i].max_hp))
                        hit_unit=death_marked[ai_i]
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
        for(ai_i=0; ai_i<array_length_1d(Battle_progress.inst_id); ai_i+=1)
            { 
                if(Battle_progress.inst_id[ai_i].position<8)
                {
                    SCR_DMG_Calculation(id,Battle_progress.inst_id[ai_i]) 
                    Battle_progress.inst_id[ai_i].targeted=0
                }
            }
        Battle_progress.queue_turn++
        Battle_progress.active_unit.active_turn=0 
    } break;
}
