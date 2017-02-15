///SCR_DMG_Calculation(player unit, enemy unit)

player = argument0
target  = argument1

if(is_array(target) == 1)
{
    for(dc_i=0; dc_i<array_length_1d(target); dc_i+=1)
    {
        target[dc_i].hp -= floor(((((player.ad * (100 - target[dc_i].ar)/100)*player.physical_attack_scale) + ((player.md * (100 - target[dc_i].mr)/100)*player.magical_attack_scale)) * ((100-50*target[dc_i].def)/100))+ random(6))

        if(target[dc_i].debuff == 0)
            switch (player.effect)
            {
                //Stun
                case 1: 
                {                    
                    if(floor(random(100))<player.skill_chance)
                    {
                        target[dc_i].debuff = 1; 
                        target[dc_i].debuff_counter = 1
                    }
                } break;
                //Taunt
                case 2: 
                {
                    if(floor(random(100))<player.skill_chance)
                    {
                        target[dc_i].debuff = 2; 
                        target[dc_i].physical_attack_scale = 0.75
                        target[dc_i].debuff_counter = 1
                    }
                } break;
                //Challenge
                case 3: 
                {
                    if(floor(random(100))<player.skill_chance)
                    {
                        target[dc_i].debuff = 2; 
                        target[dc_i].physical_attack_scale = 0.60
                        target[dc_i].magical_attack_scale = 0.60
                        target[dc_i].debuff_counter = 2
                    }
                } break;
                //Bleed
                case 4: 
                {
                    if(floor(random(100))<player.skill_chance)
                    {
                        target[dc_i].debuff = 3; 
                        target[dc_i].debuff_counter = random(3)
                    }
                } break;      
            }

        if(target[dc_i].hp <=0)
        {
            target[dc_i].hp = 0
            target[dc_i].targeted=0
            Battle_progress.turn_queue = SCR_Delete_obj_with_0_HP(Battle_progress.turn_queue,1)
            Battle_progress.inst_id = SCR_Delete_obj_with_0_HP(Battle_progress.inst_id,0)
            SCR_Death_animation(target[dc_i])
        }
    }
} 
else
{
    target.hp -= floor(((((player.ad * (100 - target.ar)/100)*player.physical_attack_scale) + ((player.md * (100 - target.mr)/100)*player.magical_attack_scale)) * ((100-50*target.def)/100))+ random(6))
    if(target.debuff == 0)
        switch (player.effect)
        {
            case 1: 
            {
                if(floor(random(100))<player.skill_chance)
                {
                    target.debuff = 1; 
                    target.debuff_counter = 1
                    }
            } break;
            case 2: 
            {
                if(floor(random(100))<player.skill_chance)
                {
                    target.debuff = 2; 
                    target.debuff_counter = 2
                }
            } break;
            case 3: 
            {
                if(floor(random(100))<player.skill_chance)
                {
                    target.debuff = 2; 
                    target.debuff_counter = 3
                }
            } break;
            case 4: 
            {
                if(floor(random(100))<player.skill_chance)
                {
                    target.debuff = 4; 
                    target.debuff_counter = 1
                }
            } break;      
        }
     
    if(target.hp <=0)
    {
        target.hp = 0
        target.targeted=0
        Battle_progress.turn_queue = SCR_Delete_obj_with_0_HP(Battle_progress.turn_queue,1)
        Battle_progress.inst_id = SCR_Delete_obj_with_0_HP(Battle_progress.inst_id,0)
        SCR_Death_animation(target)
    }
}
