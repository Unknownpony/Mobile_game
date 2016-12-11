///SCR_PositionExist(array units, int position) - check if someone exist on that position

arr = argument0
pos = argument1

for(i=0; i<array_length_1d(arr); i+=1)
{
    if(arr[i].position==pos)
        return arr[i]     
};
return 0 


