///SCR_Delete_obj_with_0_HP(arr obj) - return array without objects with 0 HP

temp_array = argument0

j = 0
for(i=0; i<array_length_1d(temp_array); i+=1)    
{
    if(temp_array[i].hp > 0)
    {
        ret_array[j] = temp_array[i]
        j++
    }
}
return ret_array
