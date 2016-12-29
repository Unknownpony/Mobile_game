///SCR_Attack_animation()

//attack_range:
//0 - one enemy
//1 - all enemy
if(attack_range == 0)
{
    SCR_Battle_animation(active_unit, target_unit)
} else if(attack_range == 1)
{
    temp_i = 0 
    for(aa_i=0; aa_i<array_length_1d(inst_id); aa_i+=1)
        if(inst_id[aa_i].targeted==1)
        {
            target_unit[temp_i] = inst_id[aa_i]   
            temp_i++
        }
    SCR_Battle_animation(active_unit, target_unit)             
} else if(attack_range == 2)
{
    SCR_Heal_animation(active_unit)           
}

