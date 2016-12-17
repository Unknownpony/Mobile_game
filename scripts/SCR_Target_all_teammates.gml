///SCR_Target_all_teammates(arr units)

arr = argument0

//Mark all player units
for(tat_i=0; tat_i<array_length_1d(arr); tat_i+=1)
    if(arr[tat_i].position<8)
        arr[tat_i].targeted = 1
