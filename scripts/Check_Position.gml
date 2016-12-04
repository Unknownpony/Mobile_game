///Check_Position(begin_x,end_x,begin_y,end_y,current_position_x,current_position_y,temp_x,temp_y)
begin_x = argument0
end_x = argument1
begin_y = argument2
end_y = argument3
current_position_x = argument4
current_position_y = argument5
temp_x = argument6
temp_y = argument7
below_object = -4
i=0
grabed_position_column=0
grabed_position_row=0
current_position_column=0
current_position_row=0  
temp_unit=0  
if(mouse_x>=begin_x and mouse_x<=end_x and mouse_y>=begin_y and mouse_y<=end_y)
{   
    while (below_object==-4)
    {
        below_object = collision_point( mouse_x, mouse_y, asset_get_index(Game_flow.All_unit[i,0]), false, true )   
        i+=1         
    };    
    x=current_position_x
    y=current_position_y
    below_object.x = temp_x
    below_object.y = temp_y 
        
    if(temp_x == 160)
        grabed_position_column = 1
    else if(temp_x == 680)
        grabed_position_column = 2
            
    switch (temp_y)
    {
        case 100: grabed_position_row = 3; break;
        case 220: grabed_position_row = 2; break;
        case 340: grabed_position_row = 1; break;
        default:  grabed_position_row = 0;
    }
        
    if(begin_x == 160)
        current_position_column = 1
    else if(begin_x == 680)
        current_position_column = 2
            
    switch (begin_y)
    {
        case 100: current_position_row = 3; break;
        case 220: current_position_row = 2; break;
        case 340: current_position_row = 1; break;
        default:  current_position_row = 0;
    }

    temp_unit = Game_flow.Army[current_position_column,current_position_row]
    Game_flow.Army[current_position_column,current_position_row] = Game_flow.Army[grabed_position_column,grabed_position_row] 
    Game_flow.Army[grabed_position_column,grabed_position_row] = temp_unit    
}
