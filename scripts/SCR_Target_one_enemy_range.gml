///SCR_Target_one_enemy_range(arr units)

arr = argument0


//Mark which enemy unit can be hit
for(toer_i=0; toer_i<array_length_1d(arr); toer_i+=1)
    if(arr[toer_i].position>8)
        arr[toer_i].targeted = 1
