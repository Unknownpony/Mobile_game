///SCR_Delete_obj_with_0_HP(arr obj, bool for testing queue_turn) - return array without objects with 0 HP

temp_array = argument0
test_queue_turn = argument1

dow0hp_j = 0
ret_array = 0
for(dow0hp_i=0; dow0hp_i<array_length_1d(temp_array); dow0hp_i+=1)    
{
    if(temp_array[dow0hp_i].hp > 0)
    {
        ret_array[dow0hp_j] = temp_array[dow0hp_i]
        dow0hp_j++
    } else if(dow0hp_i<Battle_progress.queue_turn and test_queue_turn==1)
        Battle_progress.queue_turn--
}
return ret_array
