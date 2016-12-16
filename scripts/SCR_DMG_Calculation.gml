///SCR_DMG_Calculation(player unit, enemy unit)

player = argument0
target  = argument1

//SCR_Attack_animation(player)
//SCR_Get_dmg_animation(target)
target.hp -= (player.ad - target.ar) - (player.md - target.mr)

if(target.hp <=0)
{
    target.hp = 0
    target.targeted=0
    Battle_progress.queue_turn--
    Battle_progress.inst_id = SCR_Delete_obj_with_0_HP(Battle_progress.inst_id)
    SCR_Death_animation(target)
}
