///SCR_Heals_Calculation(player unit, target unit)

player = argument0
target  = argument1

SCR_Heal_animation(player)
target.hp += player.md
if(target.hp >=target.max_hp)
    target.hp = target.max_hp
    

