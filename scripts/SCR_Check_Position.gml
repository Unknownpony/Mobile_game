///SCR_Check_Position(begin_x,end_x,begin_y,end_y,current_position_x,current_position_y,temp_x,temp_y)
//Arguments for the function
begin_x = argument0
end_x = argument1
begin_y = argument2
end_y = argument3
current_position_x = argument4
current_position_y = argument5
temp_x = argument6
temp_y = argument7
//Local variables
i=0
below_object = -4
grabed_position_column=0
grabed_position_row=0
current_position_column=0
current_position_row=0  
temp_unit=0  

//Based of the posiition of mouse and colision if the mouse is in any object
//It swap position of two object (grabed with mouse and below the mouse) in the current room
//Next it swap the objects position in presistance Game_flow Army variable
if(mouse_x>=begin_x and mouse_x<=end_x and mouse_y>=begin_y and mouse_y<=end_y and !(mouse_x>=temp_x and mouse_x<=temp_x+97 and mouse_y>=temp_y and mouse_y<=temp_y+95))
{   
        //Check the colision of mouse and object below. If htere is no colision -4 is return       
        while(below_object==-4)
        { 
            below_object = collision_point( mouse_x, mouse_y, General_parent_units, false, true ) 
            if(below_object<>-4)
                break
            below_object = collision_point( mouse_x, mouse_y, No_unit, false, true ) 
            if(below_object<>-4)
                break                          
        };    
        //Swap x and y position of both objects
        x=current_position_x
        y=current_position_y
        below_object.x = temp_x
        below_object.y = temp_y 
        
        //Check the position of grabed object in Army variable    
        if(temp_x == 160)
            grabed_position_column = 1
        else if(temp_x == 1000)
            grabed_position_column = 2            
        switch (temp_y)
        {
            case 100: grabed_position_row = 3; break;
            case 220: grabed_position_row = 2; break;
            case 340: grabed_position_row = 1; break;
            default:  grabed_position_row = 0;
        }
        
        //Check the position of below mouse object in Army variable     
        if(begin_x == 160)
            current_position_column = 1
        else if(begin_x == 1000)
            current_position_column = 2            
        switch (begin_y)
        {
            case 100: current_position_row = 3; break;
            case 220: current_position_row = 2; break;
            case 340: current_position_row = 1; break;
            default:  current_position_row = 0;
        }
        
        //swap position in Army
        temp_unit = Game_flow.army[current_position_column,current_position_row]
        Game_flow.army[current_position_column,current_position_row] = Game_flow.army[grabed_position_column,grabed_position_row] 
        Game_flow.army[grabed_position_column,grabed_position_row] = temp_unit    
}
