///SCR_DMG_Calculation(player unit, enemy unit)

player = argument0
target  = argument1

SCR_Attack_animation(player)
target.hp += player.md

if(target.hp >=target.max_hp)
    target.hp = target.max_hp
    

