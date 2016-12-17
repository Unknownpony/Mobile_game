///SCR_Target_all_enemy(arr units)

arr = argument0

//Mark all enemies units
for(tae_i=0; tae_i<array_length_1d(arr); tae_i+=1)
    if(arr[tae_i].position>8)
        arr[tae_i].targeted = 1
Battle_progress.every_enemy = 1
