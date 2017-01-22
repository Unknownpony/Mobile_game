///SCR_Heals_Calculation(player unit, target unit)

player = argument0
target  = argument1

if(is_array(target) == 1)
{
    for(hc_i=0; hc_i<array_length_1d(target); hc_i+=1)
    {
        target[hc_i].hp += player.md
        if(target[hc_i].hp >=target[hc_i].max_hp)
            target[hc_i].hp = target[hc_i].max_hp
    }
} else
{
    target.hp += player.md
    if(target.hp >=target.max_hp)
        target.hp = target.max_hp
}

