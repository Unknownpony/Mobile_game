///SCR_IsAlive(array of obj) - check if user units or enemy units have any HP

array = argument0
user_hp=0
enemy_hp=0

//Check if all player or enemy units health isn't equal 0
for (is_alive_i=0; is_alive_i<array_length_1d(array); is_alive_i+=1)
{
    if(array[is_alive_i].position<9)
        user_hp+=array[is_alive_i].hp
    else
        enemy_hp+=array[is_alive_i].hp
};

//if player units are equal 0 then return 2, if enemy units is equal 0 return 1. If both aren't equal 0 return 0
if(user_hp==0)
    return 2
if(enemy_hp==0)
    return 1
return 0

