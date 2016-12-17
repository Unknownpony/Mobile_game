///SCR_Target_one_teammate(arr units)

///SCR_Target_all_teammates(arr units)

arr = argument0

//Mark which player unit can be hit
for(totr_i=0; totr_i<array_length_1d(arr); totr_i+=1)
    if(arr[totr_i].position<9)
        arr[totr_i].targeted = 1
