///SCR_Target_one_enemy_range(arr units)

arr = argument0

for(i=0; i<array_length_1d(arr); i+=1)
    if(arr[i].position>8)
        if(position_meeting(mouse_x, mouse_y, arr[i]) == 1)
            arr[i].targeted = 1
