///SCR_Target_all_enemy(arr units)

arr = argument0

//Mark all enemies units
for(i=0; i<array_length_1d(arr); i+=1)
    if(arr[i].position>8)
        arr[i].targeted = 1
