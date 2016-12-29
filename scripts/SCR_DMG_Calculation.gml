///SCR_DMG_Calculation(player unit, enemy unit)

player = argument0
target  = argument1

if(is_array(target) == 1)
{
    for(dc_i=0; dc_i<array_length_1d(target); dc_i+=1)
    {
        target[dc_i].hp -= (player.ad - target[dc_i].ar) + (player.md - target[dc_i].mr)

        if(target[dc_i].hp <=0)
        {
            target[dc_i].hp = 0
            target[dc_i].targeted=0
            SCR_Death_animation(target[dc_i])
        }
    }
    Battle_progress.turn_queue = SCR_Delete_obj_with_0_HP(Battle_progress.turn_queue,1)
    Battle_progress.inst_id = SCR_Delete_obj_with_0_HP(Battle_progress.inst_id,0)
} 
else
{
    target.hp -= (player.ad - target.ar) + (player.md - target.mr)

    if(target.hp <=0)
    {
        target.hp = 0
        target.targeted=0
        Battle_progress.turn_queue = SCR_Delete_obj_with_0_HP(Battle_progress.turn_queue,1)
        Battle_progress.inst_id = SCR_Delete_obj_with_0_HP(Battle_progress.inst_id,0)
        SCR_Death_animation(target)
    }
}
